
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {scalar_t__ ipv4_iface; scalar_t__ ipv6_iface; } ;


 int iscsi_destroy_iface (scalar_t__) ;

void beiscsi_destroy_def_ifaces(struct beiscsi_hba *phba)
{
 if (phba->ipv6_iface)
  iscsi_destroy_iface(phba->ipv6_iface);
 if (phba->ipv4_iface)
  iscsi_destroy_iface(phba->ipv4_iface);
}
