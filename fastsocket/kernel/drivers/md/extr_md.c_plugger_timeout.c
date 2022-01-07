
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plug_handle {int unplug_work; } ;


 int kblockd_schedule_work (int *,int *) ;

__attribute__((used)) static void plugger_timeout(unsigned long data)
{
 struct plug_handle *plug = (void *)data;
 kblockd_schedule_work(((void*)0), &plug->unplug_work);
}
