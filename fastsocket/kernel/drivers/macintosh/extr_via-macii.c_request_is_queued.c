
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {struct adb_request* next; } ;


 struct adb_request* current_req ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int request_is_queued(struct adb_request *req) {
 struct adb_request *cur;
 unsigned long flags;
 local_irq_save(flags);
 cur = current_req;
 while (cur) {
  if (cur == req) {
   local_irq_restore(flags);
   return 1;
  }
  cur = cur->next;
 }
 local_irq_restore(flags);
 return 0;
}
