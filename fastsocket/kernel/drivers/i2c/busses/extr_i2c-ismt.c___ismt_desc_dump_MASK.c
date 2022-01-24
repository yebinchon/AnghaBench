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
struct ismt_desc {struct ismt_desc const* dptr_high; struct ismt_desc const* dptr_low; struct ismt_desc const* txbytes; struct ismt_desc const* rxbytes; struct ismt_desc const* retry; struct ismt_desc const* status; struct ismt_desc const* control; struct ismt_desc const* rd_len; struct ismt_desc const* wr_len_cmd; struct ismt_desc const* tgtaddr_rw; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct ismt_desc const*) ; 

__attribute__((used)) static void FUNC1(struct device *dev, const struct ismt_desc *desc)
{

	FUNC0(dev, "Descriptor struct:  %p\n", desc);
	FUNC0(dev, "\ttgtaddr_rw=0x%02X\n", desc->tgtaddr_rw);
	FUNC0(dev, "\twr_len_cmd=0x%02X\n", desc->wr_len_cmd);
	FUNC0(dev, "\trd_len=    0x%02X\n", desc->rd_len);
	FUNC0(dev, "\tcontrol=   0x%02X\n", desc->control);
	FUNC0(dev, "\tstatus=    0x%02X\n", desc->status);
	FUNC0(dev, "\tretry=     0x%02X\n", desc->retry);
	FUNC0(dev, "\trxbytes=   0x%02X\n", desc->rxbytes);
	FUNC0(dev, "\ttxbytes=   0x%02X\n", desc->txbytes);
	FUNC0(dev, "\tdptr_low=  0x%08X\n", desc->dptr_low);
	FUNC0(dev, "\tdptr_high= 0x%08X\n", desc->dptr_high);
}