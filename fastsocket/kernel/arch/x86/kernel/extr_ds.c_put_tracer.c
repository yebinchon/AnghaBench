
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int tracers ;

__attribute__((used)) static inline void put_tracer(struct task_struct *task)
{
 if (task)
  atomic_dec(&tracers);
 else
  atomic_inc(&tracers);
}
