#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int XTAL ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend* fe, struct dvb_frontend_parameters* params)
{
	u32 freq = params->frequency;

	int i, a, n, pump;
	u32 band, pll;

	u32 osci[]={950000,1019000,1075000,1178000,1296000,1432000,
		1576000,1718000,1856000,2036000,2150000};
	u32 bandsel[]={0,0x00020000,0x00040000,0x00100800,0x00101000,
		0x00102000,0x00104000,0x00108000,0x00110000,
		0x00120000,0x00140000};

	#define XTAL 1011100 /* Hz, really 1.0111 MHz and a /10 prescaler */
	FUNC2("cx24108 debug: entering SetTunerFreq, freq=%d\n",freq);

	/* This is really the bit driving the tuner chip cx24108 */

	if (freq<950000)
		freq = 950000; /* kHz */
	else if (freq>2150000)
		freq = 2150000; /* satellite IF is 950..2150MHz */

	/* decide which VCO to use for the input frequency */
	for(i = 1; (i < FUNC0(osci) - 1) && (osci[i] < freq); i++);
	FUNC2("cx24108 debug: select vco #%d (f=%d)\n",i,freq);
	band=bandsel[i];
	/* the gain values must be set by SetSymbolrate */
	/* compute the pll divider needed, from Conexant data sheet,
	   resolved for (n*32+a), remember f(vco) is f(receive) *2 or *4,
	   depending on the divider bit. It is set to /4 on the 2 lowest
	   bands  */
	n=((i<=2?2:1)*freq*10L)/(XTAL/100);
	a=n%32; n/=32; if(a==0) n--;
	pump=(freq<(osci[i-1]+osci[i])/2);
	pll=0xf8000000|
	    ((pump?1:2)<<(14+11))|
	    ((n&0x1ff)<<(5+11))|
	    ((a&0x1f)<<11);
	/* everything is shifted left 11 bits to left-align the bits in the
	   32bit word. Output to the tuner goes MSB-aligned, after all */
	FUNC2("cx24108 debug: pump=%d, n=%d, a=%d\n",pump,n,a);
	FUNC1(fe,band);
	/* set vga and vca to their widest-band settings, as a precaution.
	   SetSymbolrate might not be called to set this up */
	FUNC1(fe,0x500c0000);
	FUNC1(fe,0x83f1f800);
	FUNC1(fe,pll);
	//writereg(client,0x56,0x7f);

	return 0;
}