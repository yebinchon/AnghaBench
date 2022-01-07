
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lguest {unsigned int nr_cpus; unsigned int num; struct lguest* dead; struct lguest* eventfds; TYPE_2__* map; TYPE_1__* cpus; } ;
struct inode {int dummy; } ;
struct file {struct lguest* private_data; } ;
struct TYPE_4__ {int event; } ;
struct TYPE_3__ {int mm; int regs_page; int hrt; } ;


 int IS_ERR (struct lguest*) ;
 int eventfd_ctx_put (int ) ;
 int free_guest_pagetable (struct lguest*) ;
 int free_page (int ) ;
 int hrtimer_cancel (int *) ;
 int kfree (struct lguest*) ;
 int lguest_lock ;
 int mmput (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int close(struct inode *inode, struct file *file)
{
 struct lguest *lg = file->private_data;
 unsigned int i;


 if (!lg)
  return 0;





 mutex_lock(&lguest_lock);


 free_guest_pagetable(lg);

 for (i = 0; i < lg->nr_cpus; i++) {

  hrtimer_cancel(&lg->cpus[i].hrt);

  free_page(lg->cpus[i].regs_page);




  mmput(lg->cpus[i].mm);
 }


 for (i = 0; i < lg->eventfds->num; i++)
  eventfd_ctx_put(lg->eventfds->map[i].event);
 kfree(lg->eventfds);





 if (!IS_ERR(lg->dead))
  kfree(lg->dead);

 kfree(lg);

 mutex_unlock(&lguest_lock);

 return 0;
}
