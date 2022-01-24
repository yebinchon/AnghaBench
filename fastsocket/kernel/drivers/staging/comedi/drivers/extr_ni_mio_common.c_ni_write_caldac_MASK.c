#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_6__ {int* caldac; } ;
struct TYPE_5__ {int n_chans; unsigned int (* packbits ) (int,int,unsigned int*) ;} ;
struct TYPE_4__ {int* caldacs; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int /*<<< orphan*/  Serial_Command ; 
 TYPE_3__ boardtype ; 
 int caldac_none ; 
 TYPE_2__* caldacs ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct comedi_device *dev, int addr, int val)
{
	unsigned int loadbit = 0, bits = 0, bit, bitstring = 0;
	int i;
	int type;

	/* printk("ni_write_caldac: chan=%d val=%d\n",addr,val); */
	if (devpriv->caldacs[addr] == val)
		return;
	devpriv->caldacs[addr] = val;

	for (i = 0; i < 3; i++) {
		type = boardtype.caldac[i];
		if (type == caldac_none)
			break;
		if (addr < caldacs[type].n_chans) {
			bits = caldacs[type].packbits(addr, val, &bitstring);
			loadbit = FUNC0(i);
			/* printk("caldac: using i=%d addr=%d %x\n",i,addr,bitstring); */
			break;
		}
		addr -= caldacs[type].n_chans;
	}

	for (bit = 1 << (bits - 1); bit; bit >>= 1) {
		FUNC1(((bit & bitstring) ? 0x02 : 0), Serial_Command);
		FUNC3(1);
		FUNC1(1 | ((bit & bitstring) ? 0x02 : 0), Serial_Command);
		FUNC3(1);
	}
	FUNC1(loadbit, Serial_Command);
	FUNC3(1);
	FUNC1(0, Serial_Command);
}