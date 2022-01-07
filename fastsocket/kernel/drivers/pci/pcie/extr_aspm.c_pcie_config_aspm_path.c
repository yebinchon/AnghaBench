
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {struct pcie_link_state* parent; } ;


 int pcie_config_aspm_link (struct pcie_link_state*,int ) ;
 int policy_to_aspm_state (struct pcie_link_state*) ;

__attribute__((used)) static void pcie_config_aspm_path(struct pcie_link_state *link)
{
 while (link) {
  pcie_config_aspm_link(link, policy_to_aspm_state(link));
  link = link->parent;
 }
}
