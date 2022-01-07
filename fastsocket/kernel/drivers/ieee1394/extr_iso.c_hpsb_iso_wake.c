
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_iso {int (* callback ) (struct hpsb_iso*) ;int waitq; } ;


 int stub1 (struct hpsb_iso*) ;
 int wake_up_interruptible (int *) ;

void hpsb_iso_wake(struct hpsb_iso *iso)
{
 wake_up_interruptible(&iso->waitq);

 if (iso->callback)
  iso->callback(iso);
}
