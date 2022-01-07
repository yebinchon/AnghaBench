
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lguest {struct lg_eventfd_map* eventfds; } ;
struct lg_eventfd_map {int num; TYPE_1__* map; } ;
struct TYPE_3__ {unsigned long addr; int event; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int eventfd_ctx_fdget (int) ;
 int kfree (struct lg_eventfd_map*) ;
 struct lg_eventfd_map* kmalloc (int,int ) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int rcu_assign_pointer (struct lg_eventfd_map*,struct lg_eventfd_map*) ;
 int synchronize_rcu () ;

__attribute__((used)) static int add_eventfd(struct lguest *lg, unsigned long addr, int fd)
{
 struct lg_eventfd_map *new, *old = lg->eventfds;





 if (!addr)
  return -EINVAL;





 new = kmalloc(sizeof(*new) + sizeof(new->map[0]) * (old->num + 1),
        GFP_KERNEL);
 if (!new)
  return -ENOMEM;


 memcpy(new->map, old->map, sizeof(old->map[0]) * old->num);
 new->num = old->num;


 new->map[new->num].addr = addr;
 new->map[new->num].event = eventfd_ctx_fdget(fd);
 if (IS_ERR(new->map[new->num].event)) {
  int err = PTR_ERR(new->map[new->num].event);
  kfree(new);
  return err;
 }
 new->num++;
 rcu_assign_pointer(lg->eventfds, new);





 synchronize_rcu();
 kfree(old);

 return 0;
}
