
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_cmd_get_if_info_resp {int dummy; } ;


 int BE2_IPV4 ;
 int BE2_IPV6 ;
 int beiscsi_create_ipv4_iface (struct beiscsi_hba*) ;
 int beiscsi_create_ipv6_iface (struct beiscsi_hba*) ;
 int mgmt_get_if_info (struct beiscsi_hba*,int ,struct be_cmd_get_if_info_resp*) ;

void beiscsi_create_def_ifaces(struct beiscsi_hba *phba)
{
 struct be_cmd_get_if_info_resp if_info;

 if (!mgmt_get_if_info(phba, BE2_IPV4, &if_info))
  beiscsi_create_ipv4_iface(phba);

 if (!mgmt_get_if_info(phba, BE2_IPV6, &if_info))
  beiscsi_create_ipv6_iface(phba);
}
