
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci1394_iso_tasklet {int type; int link; int tasklet; } ;


 int INIT_LIST_HEAD (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;

void ohci1394_init_iso_tasklet(struct ohci1394_iso_tasklet *tasklet, int type,
          void (*func)(unsigned long), unsigned long data)
{
 tasklet_init(&tasklet->tasklet, func, data);
 tasklet->type = type;


 INIT_LIST_HEAD(&tasklet->link);
}
