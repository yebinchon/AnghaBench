
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int dummy; } ;


 int PSYCHO_CONFIG_BASE (struct pci_pbm_info*) ;
 int PSYCHO_CONFIG_ENCODE (unsigned char,unsigned int,int) ;

__attribute__((used)) static inline void *psycho_pci_config_mkaddr(struct pci_pbm_info *pbm,
          unsigned char bus,
          unsigned int devfn,
          int where)
{
 return (void *)
  (PSYCHO_CONFIG_BASE(pbm) |
   PSYCHO_CONFIG_ENCODE(bus, devfn, where));
}
