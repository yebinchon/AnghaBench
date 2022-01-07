
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int XTAL ;
 int cx24110_pll_write (struct dvb_frontend*,int) ;
 int printk (char*,int,...) ;

__attribute__((used)) static int cx24108_tuner_set_params(struct dvb_frontend* fe, struct dvb_frontend_parameters* params)
{
 u32 freq = params->frequency;

 int i, a, n, pump;
 u32 band, pll;

 u32 osci[]={950000,1019000,1075000,1178000,1296000,1432000,
  1576000,1718000,1856000,2036000,2150000};
 u32 bandsel[]={0,0x00020000,0x00040000,0x00100800,0x00101000,
  0x00102000,0x00104000,0x00108000,0x00110000,
  0x00120000,0x00140000};


 printk("cx24108 debug: entering SetTunerFreq, freq=%d\n",freq);



 if (freq<950000)
  freq = 950000;
 else if (freq>2150000)
  freq = 2150000;


 for(i = 1; (i < ARRAY_SIZE(osci) - 1) && (osci[i] < freq); i++);
 printk("cx24108 debug: select vco #%d (f=%d)\n",i,freq);
 band=bandsel[i];





 n=((i<=2?2:1)*freq*10L)/(1011100/100);
 a=n%32; n/=32; if(a==0) n--;
 pump=(freq<(osci[i-1]+osci[i])/2);
 pll=0xf8000000|
     ((pump?1:2)<<(14+11))|
     ((n&0x1ff)<<(5+11))|
     ((a&0x1f)<<11);


 printk("cx24108 debug: pump=%d, n=%d, a=%d\n",pump,n,a);
 cx24110_pll_write(fe,band);


 cx24110_pll_write(fe,0x500c0000);
 cx24110_pll_write(fe,0x83f1f800);
 cx24110_pll_write(fe,pll);


 return 0;
}
