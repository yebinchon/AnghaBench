
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sn_pcibus_provider {int (* target_interrupt ) (struct sn_irq_info*) ;} ;
struct sn_irq_info {int irq_irq; int irq_cpuid; size_t irq_bridge_type; scalar_t__ irq_int_bit; int irq_slice; int irq_nasid; int rcu; int list; scalar_t__ irq_bridge; } ;
typedef int nasid_t ;
typedef scalar_t__ int64_t ;


 int GFP_ATOMIC ;
 int NASID_GET (scalar_t__) ;
 int SWIN_WIDGETNUM (scalar_t__) ;
 int TIO_SWIN_WIDGETNUM (scalar_t__) ;
 int call_rcu (int *,int ) ;
 int cpu_physical_id (int) ;
 int kfree (struct sn_irq_info*) ;
 struct sn_irq_info* kmalloc (int,int ) ;
 int list_replace_rcu (int *,int *) ;
 int memcpy (struct sn_irq_info*,struct sn_irq_info*,int) ;
 int nasid_slice_to_cpuid (int ,int ) ;
 int register_intr_pda (struct sn_irq_info*) ;
 int set_irq_affinity_info (int,int,int ) ;
 int sn_intr_alloc (int,int,struct sn_irq_info*,int,int,int) ;
 int sn_intr_free (int,int,struct sn_irq_info*) ;
 int sn_intr_redirect (int,int,struct sn_irq_info*,int,int) ;
 int sn_irq_info_free ;
 int sn_irq_info_lock ;
 struct sn_pcibus_provider** sn_pci_provider ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sn_irq_info*) ;
 int unregister_intr_pda (struct sn_irq_info*) ;

struct sn_irq_info *sn_retarget_vector(struct sn_irq_info *sn_irq_info,
           nasid_t nasid, int slice)
{
 int vector;
 int cpuid;



 int64_t bridge;
 int local_widget, status;
 nasid_t local_nasid;
 struct sn_irq_info *new_irq_info;
 struct sn_pcibus_provider *pci_provider;

 bridge = (u64) sn_irq_info->irq_bridge;
 if (!bridge) {
  return ((void*)0);
 }

 local_nasid = NASID_GET(bridge);

 if (local_nasid & 1)
  local_widget = TIO_SWIN_WIDGETNUM(bridge);
 else
  local_widget = SWIN_WIDGETNUM(bridge);
 vector = sn_irq_info->irq_irq;


 status = sn_intr_redirect(local_nasid, local_widget, sn_irq_info, nasid, slice);
 if (!status) {
  new_irq_info = sn_irq_info;
  goto finish_up;
 }





 new_irq_info = kmalloc(sizeof(struct sn_irq_info), GFP_ATOMIC);
 if (new_irq_info == ((void*)0))
  return ((void*)0);

 memcpy(new_irq_info, sn_irq_info, sizeof(struct sn_irq_info));


 sn_intr_free(local_nasid, local_widget, new_irq_info);
 unregister_intr_pda(new_irq_info);


 status = sn_intr_alloc(local_nasid, local_widget,
          new_irq_info, vector,
          nasid, slice);


 if (status) {
  kfree(new_irq_info);
  return ((void*)0);
 }

 register_intr_pda(new_irq_info);
 spin_lock(&sn_irq_info_lock);
 list_replace_rcu(&sn_irq_info->list, &new_irq_info->list);
 spin_unlock(&sn_irq_info_lock);
 call_rcu(&sn_irq_info->rcu, sn_irq_info_free);


finish_up:

 cpuid = nasid_slice_to_cpuid(new_irq_info->irq_nasid,
         new_irq_info->irq_slice);
 new_irq_info->irq_cpuid = cpuid;

 pci_provider = sn_pci_provider[new_irq_info->irq_bridge_type];





 if (new_irq_info->irq_int_bit >= 0 &&
     pci_provider && pci_provider->target_interrupt)
  (pci_provider->target_interrupt)(new_irq_info);






 return new_irq_info;
}
