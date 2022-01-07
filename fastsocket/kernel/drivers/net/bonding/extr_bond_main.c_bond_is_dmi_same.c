
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_mc_list {scalar_t__ dmi_addrlen; int dmi_addr; } ;


 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static inline int bond_is_dmi_same(const struct dev_mc_list *dmi1,
       const struct dev_mc_list *dmi2)
{
 return memcmp(dmi1->dmi_addr, dmi2->dmi_addr, dmi1->dmi_addrlen) == 0 &&
   dmi1->dmi_addrlen == dmi2->dmi_addrlen;
}
