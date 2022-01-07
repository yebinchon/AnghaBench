
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hptiop_hba {scalar_t__ msg_done; TYPE_1__* host; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* iop_intr ) (struct hptiop_hba*) ;int (* post_msg ) (struct hptiop_hba*,scalar_t__) ;} ;
struct TYPE_3__ {int host_lock; } ;


 int msleep (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct hptiop_hba*,scalar_t__) ;
 int stub2 (struct hptiop_hba*) ;

__attribute__((used)) static int iop_send_sync_msg(struct hptiop_hba *hba, u32 msg, u32 millisec)
{
 u32 i;

 hba->msg_done = 0;
 hba->ops->post_msg(hba, msg);

 for (i = 0; i < millisec; i++) {
  spin_lock_irq(hba->host->host_lock);
  hba->ops->iop_intr(hba);
  spin_unlock_irq(hba->host->host_lock);
  if (hba->msg_done)
   break;
  msleep(1);
 }

 return hba->msg_done? 0 : -1;
}
