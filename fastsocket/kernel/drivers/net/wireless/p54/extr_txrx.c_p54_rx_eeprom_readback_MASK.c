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
struct sk_buff {scalar_t__ data; } ;
struct p54_hdr {int /*<<< orphan*/  req_id; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct p54_eeprom_lm86 {TYPE_2__ v1; TYPE_1__ v2; } ;
struct p54_common {int fw_var; int /*<<< orphan*/  eeprom_comp; int /*<<< orphan*/ * eeprom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (struct p54_common*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct p54_common *priv,
				   struct sk_buff *skb)
{
	struct p54_hdr *hdr = (struct p54_hdr *) skb->data;
	struct p54_eeprom_lm86 *eeprom = (struct p54_eeprom_lm86 *) hdr->data;
	struct sk_buff *tmp;

	if (!priv->eeprom)
		return ;

	if (priv->fw_var >= 0x509) {
		FUNC3(priv->eeprom, eeprom->v2.data,
		       FUNC2(eeprom->v2.len));
	} else {
		FUNC3(priv->eeprom, eeprom->v1.data,
		       FUNC2(eeprom->v1.len));
	}

	priv->eeprom = NULL;
	tmp = FUNC4(priv, hdr->req_id);
	FUNC1(tmp);
	FUNC0(&priv->eeprom_comp);
}