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
struct sk_buff {int /*<<< orphan*/  truesize; } ;
struct idt77252_dev {int /*<<< orphan*/  name; } ;
struct atm_vcc {TYPE_1__* stats; struct atm_dev* dev; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_wmem_alloc; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_err; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int) ; 
 int FUNC3 (struct atm_vcc*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static int
FUNC8(struct atm_vcc *vcc, void *cell, int flags)
{
	struct atm_dev *dev = vcc->dev;
	struct idt77252_dev *card = dev->dev_data;
	struct sk_buff *skb;

	skb = FUNC2(64);
	if (!skb) {
		FUNC5("%s: Out of memory in send_oam().\n", card->name);
		FUNC1(&vcc->stats->tx_err);
		return -ENOMEM;
	}
	FUNC0(skb->truesize, &FUNC6(vcc)->sk_wmem_alloc);

	FUNC4(FUNC7(skb, 52), cell, 52);

	return FUNC3(vcc, skb, 1);
}