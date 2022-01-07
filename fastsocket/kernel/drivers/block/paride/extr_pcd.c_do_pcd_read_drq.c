
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pi; } ;


 int EIO ;
 scalar_t__ PCD_RETRIES ;
 int do_pcd_read () ;
 int do_pcd_request (int ) ;
 int mdelay (int) ;
 int next_request (int ) ;
 int pcd_bufblk ;
 int pcd_buffer ;
 scalar_t__ pcd_completion (TYPE_1__*,int ,char*) ;
 TYPE_1__* pcd_current ;
 int pcd_lock ;
 int pcd_queue ;
 scalar_t__ pcd_retries ;
 int pcd_start ;
 int pi_do_claimed (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void do_pcd_read_drq(void)
{
 unsigned long saved_flags;

 if (pcd_completion(pcd_current, pcd_buffer, "read block")) {
  if (pcd_retries < PCD_RETRIES) {
   mdelay(1);
   pcd_retries++;
   pi_do_claimed(pcd_current->pi, pcd_start);
   return;
  }
  pcd_bufblk = -1;
  next_request(-EIO);
  return;
 }

 do_pcd_read();
 spin_lock_irqsave(&pcd_lock, saved_flags);
 do_pcd_request(pcd_queue);
 spin_unlock_irqrestore(&pcd_lock, saved_flags);
}
