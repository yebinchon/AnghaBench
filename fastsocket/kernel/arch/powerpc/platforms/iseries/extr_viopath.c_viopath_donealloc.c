
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_parms {int number; int done; int wait_atomic; scalar_t__ used_wait_atomic; } ;


 int atomic_set (int *,int ) ;
 int complete (int *) ;

__attribute__((used)) static void viopath_donealloc(void *parm, int number)
{
 struct alloc_parms *parmsp = parm;

 parmsp->number = number;
 if (parmsp->used_wait_atomic)
  atomic_set(&parmsp->wait_atomic, 0);
 else
  complete(&parmsp->done);
}
