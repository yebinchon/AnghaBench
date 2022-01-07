
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_raw {scalar_t__ refcnt; int node; int dev; } ;


 int kfree (struct serio_raw*) ;
 int list_del_init (int *) ;
 int misc_deregister (int *) ;

__attribute__((used)) static int serio_raw_cleanup(struct serio_raw *serio_raw)
{
 if (--serio_raw->refcnt == 0) {
  misc_deregister(&serio_raw->dev);
  list_del_init(&serio_raw->node);
  kfree(serio_raw);

  return 1;
 }

 return 0;
}
