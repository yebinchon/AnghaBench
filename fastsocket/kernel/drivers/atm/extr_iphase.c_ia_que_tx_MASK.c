#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct ia_vcc {int dummy; } ;
struct atm_vcc {int /*<<< orphan*/  vci; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_backlog; } ;
typedef  TYPE_1__ IADEV ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  ATM_VF_READY ; 
 struct ia_vcc* FUNC1 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct atm_vcc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9 (IADEV *iadev) { 
   struct sk_buff *skb;
   int num_desc;
   struct atm_vcc *vcc;
   struct ia_vcc *iavcc;
   num_desc = FUNC3(iadev);

   while (num_desc && (skb = FUNC6(&iadev->tx_backlog))) {
      if (!(vcc = FUNC0(skb)->vcc)) {
         FUNC2(skb);
         FUNC5("ia_que_tx: Null vcc\n");
         break;
      }
      if (!FUNC8(ATM_VF_READY,&vcc->flags)) {
         FUNC2(skb);
         FUNC5("Free the SKB on closed vci %d \n", vcc->vci);
         break;
      }
      iavcc = FUNC1(vcc);
      if (FUNC4 (vcc, skb)) {
         FUNC7(&iadev->tx_backlog, skb);
      }
      num_desc--;
   }
   return 0;
}