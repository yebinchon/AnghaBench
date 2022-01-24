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
struct sk_buff {scalar_t__ data; } ;
struct p54_hdr {int /*<<< orphan*/  type; } ;
struct p54_common {TYPE_1__* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
#define  P54_CONTROL_TYPE_BBP 132 
#define  P54_CONTROL_TYPE_EEPROM_READBACK 131 
#define  P54_CONTROL_TYPE_STAT_READBACK 130 
#define  P54_CONTROL_TYPE_TRAP 129 
#define  P54_CONTROL_TYPE_TXDONE 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct p54_common *priv, struct sk_buff *skb)
{
	struct p54_hdr *hdr = (struct p54_hdr *) skb->data;

	switch (FUNC0(hdr->type)) {
	case P54_CONTROL_TYPE_TXDONE:
		FUNC2(priv, skb);
		break;
	case P54_CONTROL_TYPE_TRAP:
		FUNC4(priv, skb);
		break;
	case P54_CONTROL_TYPE_BBP:
		break;
	case P54_CONTROL_TYPE_STAT_READBACK:
		FUNC3(priv, skb);
		break;
	case P54_CONTROL_TYPE_EEPROM_READBACK:
		FUNC1(priv, skb);
		break;
	default:
		FUNC5(priv->hw->wiphy,
			    "not handling 0x%02x type control frame\n",
			    FUNC0(hdr->type));
		break;
	}
	return 0;
}