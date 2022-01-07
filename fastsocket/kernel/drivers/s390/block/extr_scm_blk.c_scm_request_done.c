
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int list; } ;


 int inactive_requests ;
 int list_add (int *,int *) ;
 int list_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scm_request_done(struct scm_request *scmrq)
{
 unsigned long flags;

 spin_lock_irqsave(&list_lock, flags);
 list_add(&scmrq->list, &inactive_requests);
 spin_unlock_irqrestore(&list_lock, flags);
}
