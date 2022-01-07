
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __blk_end_request_cur (int *,int) ;
 int do_pcd_request (int ) ;
 scalar_t__ pcd_busy ;
 int pcd_lock ;
 int pcd_queue ;
 int * pcd_req ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void next_request(int err)
{
 unsigned long saved_flags;

 spin_lock_irqsave(&pcd_lock, saved_flags);
 if (!__blk_end_request_cur(pcd_req, err))
  pcd_req = ((void*)0);
 pcd_busy = 0;
 do_pcd_request(pcd_queue);
 spin_unlock_irqrestore(&pcd_lock, saved_flags);
}
