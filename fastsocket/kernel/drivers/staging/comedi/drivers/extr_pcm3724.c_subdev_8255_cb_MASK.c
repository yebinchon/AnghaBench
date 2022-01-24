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

/* Variables and functions */
 unsigned char FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long) ; 

__attribute__((used)) static int FUNC2(int dir, int port, int data, unsigned long arg)
{
	unsigned long iobase = arg;
	unsigned char inbres;
	/* printk("8255cb %d %d %d %lx\n", dir,port,data,arg); */
	if (dir) {
		/* printk("8255 cb   outb(%x, %lx)\n", data, iobase+port); */
		FUNC1(data, iobase + port);
		return 0;
	} else {
		inbres = FUNC0(iobase + port);
		/* printk("8255 cb   inb(%lx) = %x\n", iobase+port, inbres); */
		return inbres;
	}
}