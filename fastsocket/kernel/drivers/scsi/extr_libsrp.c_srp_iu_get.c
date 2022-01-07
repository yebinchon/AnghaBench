
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; } ;
struct srp_target {TYPE_1__ iu_queue; } ;
struct iu_entry {scalar_t__ flags; int ilist; struct srp_target* target; } ;


 int INIT_LIST_HEAD (int *) ;
 int kfifo_get (int ,void*,int) ;

struct iu_entry *srp_iu_get(struct srp_target *target)
{
 struct iu_entry *iue = ((void*)0);

 kfifo_get(target->iu_queue.queue, (void *) &iue, sizeof(void *));
 if (!iue)
  return iue;
 iue->target = target;
 INIT_LIST_HEAD(&iue->ilist);
 iue->flags = 0;
 return iue;
}
