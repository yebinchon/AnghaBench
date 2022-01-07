
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asd_ha_struct {int pcidev; } ;


 int asd_chip_hardrst (struct asd_ha_struct*) ;
 int asd_disable_ints (struct asd_ha_struct*) ;
 int asd_init_seqs (struct asd_ha_struct*) ;
 int asd_printk (char*,int ) ;
 int asd_start_seqs (struct asd_ha_struct*) ;
 int pci_name (int ) ;

__attribute__((used)) static int asd_init_chip(struct asd_ha_struct *asd_ha)
{
 int err;

 err = asd_chip_hardrst(asd_ha);
 if (err) {
  asd_printk("couldn't hard reset %s\n",
       pci_name(asd_ha->pcidev));
  goto out;
 }

 asd_disable_ints(asd_ha);

 err = asd_init_seqs(asd_ha);
 if (err) {
  asd_printk("couldn't init seqs for %s\n",
      pci_name(asd_ha->pcidev));
  goto out;
 }

 err = asd_start_seqs(asd_ha);
 if (err) {
  asd_printk("coudln't start seqs for %s\n",
      pci_name(asd_ha->pcidev));
  goto out;
 }
out:
 return err;
}
