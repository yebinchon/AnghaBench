
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmmio_probe {unsigned long len; unsigned long addr; int list; } ;
struct kmmio_fault_page {int dummy; } ;
struct kmmio_delayed_release {int rcu; struct kmmio_fault_page* release_list; } ;


 int GFP_ATOMIC ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int call_rcu (int *,int ) ;
 struct kmmio_delayed_release* kmalloc (int,int ) ;
 int kmmio_count ;
 int kmmio_lock ;
 int list_del_rcu (int *) ;
 int pr_crit (char*) ;
 int release_kmmio_fault_page (unsigned long,struct kmmio_fault_page**) ;
 int remove_kmmio_fault_pages ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void unregister_kmmio_probe(struct kmmio_probe *p)
{
 unsigned long flags;
 unsigned long size = 0;
 const unsigned long size_lim = p->len + (p->addr & ~PAGE_MASK);
 struct kmmio_fault_page *release_list = ((void*)0);
 struct kmmio_delayed_release *drelease;

 spin_lock_irqsave(&kmmio_lock, flags);
 while (size < size_lim) {
  release_kmmio_fault_page(p->addr + size, &release_list);
  size += PAGE_SIZE;
 }
 list_del_rcu(&p->list);
 kmmio_count--;
 spin_unlock_irqrestore(&kmmio_lock, flags);

 drelease = kmalloc(sizeof(*drelease), GFP_ATOMIC);
 if (!drelease) {
  pr_crit("kmmio: leaking kmmio_fault_page objects.\n");
  return;
 }
 drelease->release_list = release_list;
 call_rcu(&drelease->rcu, remove_kmmio_fault_pages);
}
