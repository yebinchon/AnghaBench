
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmballoon {int reset_required; } ;


 int pr_err (char*) ;
 int vmballoon_pop (struct vmballoon*) ;
 int vmballoon_send_guest_id (struct vmballoon*) ;
 scalar_t__ vmballoon_send_start (struct vmballoon*) ;

__attribute__((used)) static void vmballoon_reset(struct vmballoon *b)
{

 vmballoon_pop(b);

 if (vmballoon_send_start(b)) {
  b->reset_required = 0;
  if (!vmballoon_send_guest_id(b))
   pr_err("failed to send guest ID to the host\n");
 }
}
