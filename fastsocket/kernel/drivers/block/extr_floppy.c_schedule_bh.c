
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_func_t ;


 int PREPARE_WORK (int *,int ) ;
 int floppy_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void schedule_bh(void (*handler) (void))
{
 PREPARE_WORK(&floppy_work, (work_func_t)handler);
 schedule_work(&floppy_work);
}
