#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct solos_card {TYPE_1__* dev; } ;
struct sk_buff {int dummy; } ;
struct pkt_hdr {void* type; void* vci; void* vpi; void* size; } ;
struct atm_vcc {int /*<<< orphan*/  flags; TYPE_2__* dev; int /*<<< orphan*/  vci; int /*<<< orphan*/  vpi; } ;
struct TYPE_4__ {struct solos_card* dev_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_ADDR ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PKT_PCLOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct sk_buff* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct solos_card*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC7(struct atm_vcc *vcc)
{
	struct solos_card *card = vcc->dev->dev_data;
	struct sk_buff *skb;
	struct pkt_hdr *header;

	skb = FUNC1(sizeof(*header), GFP_ATOMIC);
	if (!skb) {
		FUNC4(&card->dev->dev, "Failed to allocate sk_buff in pclose()\n");
		return;
	}
	header = (void *)FUNC6(skb, sizeof(*header));

	header->size = FUNC3(0);
	header->vpi = FUNC3(vcc->vpi);
	header->vci = FUNC3(vcc->vci);
	header->type = FUNC3(PKT_PCLOSE);

	FUNC5(card, FUNC0(vcc->dev), skb, NULL);

	FUNC2(ATM_VF_ADDR, &vcc->flags);
	FUNC2(ATM_VF_READY, &vcc->flags);

	return;
}