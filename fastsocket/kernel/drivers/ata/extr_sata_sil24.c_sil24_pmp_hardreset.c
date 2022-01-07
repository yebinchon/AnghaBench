
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int ap; } ;


 int KERN_ERR ;
 int ata_link_printk (struct ata_link*,int ,char*) ;
 int sata_std_hardreset (struct ata_link*,unsigned int*,unsigned long) ;
 int sil24_init_port (int ) ;

__attribute__((used)) static int sil24_pmp_hardreset(struct ata_link *link, unsigned int *class,
          unsigned long deadline)
{
 int rc;

 rc = sil24_init_port(link->ap);
 if (rc) {
  ata_link_printk(link, KERN_ERR,
    "hardreset failed (port not ready)\n");
  return rc;
 }

 return sata_std_hardreset(link, class, deadline);
}
