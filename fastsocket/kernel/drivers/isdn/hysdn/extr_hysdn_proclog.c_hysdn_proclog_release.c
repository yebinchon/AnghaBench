
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct procdata {int log_name; scalar_t__ log; } ;
struct TYPE_3__ {int * proclog; } ;
typedef TYPE_1__ hysdn_card ;


 int hysdn_proc_entry ;
 int kfree (struct procdata*) ;
 int remove_proc_entry (int ,int ) ;

void
hysdn_proclog_release(hysdn_card * card)
{
 struct procdata *pd;

 if ((pd = (struct procdata *) card->proclog) != ((void*)0)) {
  if (pd->log)
   remove_proc_entry(pd->log_name, hysdn_proc_entry);
  kfree(pd);
  card->proclog = ((void*)0);
 }
}
