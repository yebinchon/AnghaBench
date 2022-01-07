
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int paravirt_end_context_switch (struct task_struct*) ;
 int xen_mc_flush () ;

__attribute__((used)) static void xen_end_context_switch(struct task_struct *next)
{
 xen_mc_flush();
 paravirt_end_context_switch(next);
}
