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
 int /*<<< orphan*/  IRQ_FLG_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int,void (*) (),int /*<<< orphan*/ ,char*,void*) ; 

void
FUNC1(int vec, void (*handler)(), void *dev_id)
{

	FUNC0(vec, handler, IRQ_FLG_LOCK, "timer", dev_id);

/* 	if (cpm_vecs[vec].handler != 0) */
/* 		printk(KERN_INFO "CPM interrupt %x replacing %x\n", */
/* 			(uint)handler, (uint)cpm_vecs[vec].handler); */
/* 	cpm_vecs[vec].handler = handler; */
/* 	cpm_vecs[vec].dev_id = dev_id; */

	/*              ((immap_t *)IMAP_ADDR)->im_cpic.cpic_cimr |= (1 << vec); */
/* 	pquicc->intr_cimr |= (1 << vec); */

}