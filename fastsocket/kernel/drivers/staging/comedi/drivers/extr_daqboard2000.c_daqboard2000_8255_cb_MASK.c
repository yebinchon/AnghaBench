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
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 

__attribute__((used)) static int FUNC2(int dir, int port, int data,
				unsigned long ioaddr)
{
	int result = 0;
	if (dir) {
		FUNC1(data, ((void *)ioaddr) + port * 2);
		result = 0;
	} else {
		result = FUNC0(((void *)ioaddr) + port * 2);
	}
/*
  printk("daqboard2000_8255_cb %x %d %d %2.2x -> %2.2x\n",
        arg, dir, port, data, result);
*/
	return result;
}