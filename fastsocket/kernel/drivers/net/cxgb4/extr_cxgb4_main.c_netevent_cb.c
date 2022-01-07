
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int check_neigh_update (void*) ;

__attribute__((used)) static int netevent_cb(struct notifier_block *nb, unsigned long event,
         void *data)
{
 switch (event) {
 case 129:
  check_neigh_update(data);
  break;
 case 128:
 default:
  break;
 }
 return 0;
}
