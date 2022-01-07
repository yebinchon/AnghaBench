
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_irq_info {int dummy; } ;
typedef int nasid_t ;


 int GFP_KERNEL ;
 int __pa (struct sn_irq_info*) ;
 int kfree (struct sn_irq_info*) ;
 struct sn_irq_info* kzalloc (int,int ) ;
 int tiocx_intr_alloc (int,int,int ,int,int,int) ;

struct sn_irq_info *tiocx_irq_alloc(nasid_t nasid, int widget, int irq,
        nasid_t req_nasid, int slice)
{
 struct sn_irq_info *sn_irq_info;
 int status;
 int sn_irq_size = sizeof(struct sn_irq_info);

 if ((nasid & 1) == 0)
  return ((void*)0);

 sn_irq_info = kzalloc(sn_irq_size, GFP_KERNEL);
 if (sn_irq_info == ((void*)0))
  return ((void*)0);

 status = tiocx_intr_alloc(nasid, widget, __pa(sn_irq_info), irq,
      req_nasid, slice);
 if (status) {
  kfree(sn_irq_info);
  return ((void*)0);
 } else {
  return sn_irq_info;
 }
}
