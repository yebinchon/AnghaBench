
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3215_req {struct raw3215_req* next; } ;


 struct raw3215_req* raw3215_freelist ;
 int raw3215_freelist_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline struct raw3215_req *raw3215_alloc_req(void)
{
 struct raw3215_req *req;
 unsigned long flags;

 spin_lock_irqsave(&raw3215_freelist_lock, flags);
 req = raw3215_freelist;
 raw3215_freelist = req->next;
 spin_unlock_irqrestore(&raw3215_freelist_lock, flags);
 return req;
}
