
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int (* set_lazy_mode ) (int) ;} ;


 int paravirt_start_context_switch (struct task_struct*) ;
 int stub1 (int) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_start_context_switch(struct task_struct *prev)
{
 paravirt_start_context_switch(prev);
 vmi_ops.set_lazy_mode(2);
}
