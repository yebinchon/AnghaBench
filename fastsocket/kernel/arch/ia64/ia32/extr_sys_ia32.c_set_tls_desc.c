
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_struct {struct desc_struct* tls_array; } ;
struct task_struct {struct thread_struct thread; } ;
struct ia32_user_desc {int dummy; } ;
struct desc_struct {scalar_t__ b; scalar_t__ a; } ;
struct TYPE_2__ {struct thread_struct thread; } ;


 int GDT_ENTRY_TLS_MIN ;
 scalar_t__ LDT_empty (struct ia32_user_desc const*) ;
 scalar_t__ LDT_entry_a (struct ia32_user_desc const*) ;
 scalar_t__ LDT_entry_b (struct ia32_user_desc const*) ;
 TYPE_1__* current ;
 int get_cpu () ;
 int load_TLS (struct thread_struct*,int) ;
 int put_cpu () ;

__attribute__((used)) static void set_tls_desc(struct task_struct *p, int idx,
  const struct ia32_user_desc *info, int n)
{
 struct thread_struct *t = &p->thread;
 struct desc_struct *desc = &t->tls_array[idx - GDT_ENTRY_TLS_MIN];
 int cpu;




 cpu = get_cpu();

 while (n-- > 0) {
  if (LDT_empty(info)) {
   desc->a = 0;
   desc->b = 0;
  } else {
   desc->a = LDT_entry_a(info);
   desc->b = LDT_entry_b(info);
  }

  ++info;
  ++desc;
 }

 if (t == &current->thread)
  load_TLS(t, cpu);

 put_cpu();
}
