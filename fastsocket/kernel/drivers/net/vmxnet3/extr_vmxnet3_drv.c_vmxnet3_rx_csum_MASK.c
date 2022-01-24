#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int frg; scalar_t__ csum; scalar_t__ v6; scalar_t__ v4; scalar_t__ udp; scalar_t__ tcp; int /*<<< orphan*/  cnc; } ;
union Vmxnet3_GenericDesc {TYPE_1__ rcd; int /*<<< orphan*/ * dword; } ;
struct vmxnet3_adapter {scalar_t__ rxcsum; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int VMXNET3_RCD_CSUM_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void
FUNC4(struct vmxnet3_adapter *adapter,
		struct sk_buff *skb,
		union Vmxnet3_GenericDesc *gdesc)
{
	if (!gdesc->rcd.cnc && adapter->rxcsum) {
		/* typical case: TCP/UDP over IP and both csums are correct */
		if ((FUNC2(gdesc->dword[3]) & VMXNET3_RCD_CSUM_OK) ==
							VMXNET3_RCD_CSUM_OK) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			FUNC0(!(gdesc->rcd.tcp || gdesc->rcd.udp));
			FUNC0(!(gdesc->rcd.v4  || gdesc->rcd.v6));
			FUNC0(gdesc->rcd.frg);
		} else {
			if (gdesc->rcd.csum) {
				skb->csum = FUNC1(gdesc->rcd.csum);
				skb->ip_summed = CHECKSUM_PARTIAL;
			} else {
				FUNC3(skb);
			}
		}
	} else {
		FUNC3(skb);
	}
}