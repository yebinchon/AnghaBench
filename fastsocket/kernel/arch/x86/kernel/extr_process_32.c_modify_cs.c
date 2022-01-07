
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long exec_limit; int user_cs; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 TYPE_2__* current ;
 int get_cpu () ;
 int load_user_cs_desc (int,struct mm_struct*) ;
 int put_cpu () ;
 int set_user_cs (int *,unsigned long) ;

__attribute__((used)) static void modify_cs(struct mm_struct *mm, unsigned long limit)
{
 mm->context.exec_limit = limit;
 set_user_cs(&mm->context.user_cs, limit);
 if (mm == current->mm) {
  int cpu;

  cpu = get_cpu();
  load_user_cs_desc(cpu, mm);
  put_cpu();
 }
}
