
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ctlr_info_t ;
struct TYPE_6__ {TYPE_1__* err_info; } ;
struct TYPE_5__ {scalar_t__ CommandStatus; scalar_t__ ScsiStatus; } ;
typedef TYPE_2__ CommandList_struct ;


 scalar_t__ CMD_TARGET_STATUS ;
 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int check_for_unit_attention (int *,TYPE_2__*) ;

__attribute__((used)) static void check_ioctl_unit_attention(ctlr_info_t *h, CommandList_struct *c)
{
 if (c->err_info->CommandStatus == CMD_TARGET_STATUS &&
   c->err_info->ScsiStatus != SAM_STAT_CHECK_CONDITION)
  (void)check_for_unit_attention(h, c);
}
