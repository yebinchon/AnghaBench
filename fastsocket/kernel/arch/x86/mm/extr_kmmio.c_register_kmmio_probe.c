
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmmio_probe {unsigned long len; unsigned long addr; int list; } ;


 int EEXIST ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ add_kmmio_fault_page (unsigned long) ;
 scalar_t__ get_kmmio_probe (unsigned long) ;
 int kmmio_count ;
 int kmmio_lock ;
 int kmmio_probes ;
 int list_add_rcu (int *,int *) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int register_kmmio_probe(struct kmmio_probe *p)
{
 unsigned long flags;
 int ret = 0;
 unsigned long size = 0;
 const unsigned long size_lim = p->len + (p->addr & ~PAGE_MASK);

 spin_lock_irqsave(&kmmio_lock, flags);
 if (get_kmmio_probe(p->addr)) {
  ret = -EEXIST;
  goto out;
 }
 kmmio_count++;
 list_add_rcu(&p->list, &kmmio_probes);
 while (size < size_lim) {
  if (add_kmmio_fault_page(p->addr + size))
   pr_err("kmmio: Unable to set page fault.\n");
  size += PAGE_SIZE;
 }
out:
 spin_unlock_irqrestore(&kmmio_lock, flags);





 return ret;
}
