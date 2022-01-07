
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2fc_hba {int adapter_state; TYPE_1__* phys_dev; } ;
struct TYPE_2__ {int state; } ;


 int ADAPTER_STATE_LINK_DOWN ;
 int __LINK_STATE_NOCARRIER ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void bnx2fc_get_link_state(struct bnx2fc_hba *hba)
{
 if (test_bit(__LINK_STATE_NOCARRIER, &hba->phys_dev->state))
  set_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
 else
  clear_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
}
