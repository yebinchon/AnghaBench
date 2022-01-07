
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int mac_address; } ;
struct be_cmd_get_nic_conf_resp {int mac_address; } ;
typedef int resp ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int memset (struct be_cmd_get_nic_conf_resp*,int ,int) ;
 int mgmt_get_nic_conf (struct beiscsi_hba*,struct be_cmd_get_nic_conf_resp*) ;
 scalar_t__ strlen (int ) ;
 int sysfs_format_mac (char*,int ,int ) ;

int beiscsi_get_macaddr(char *buf, struct beiscsi_hba *phba)
{
 struct be_cmd_get_nic_conf_resp resp;
 int rc;

 if (strlen(phba->mac_address))
  return sysfs_format_mac(buf, phba->mac_address, ETH_ALEN);

 memset(&resp, 0, sizeof(resp));
 rc = mgmt_get_nic_conf(phba, &resp);
 if (rc)
  return rc;

 memcpy(phba->mac_address, resp.mac_address, ETH_ALEN);
 return sysfs_format_mac(buf, phba->mac_address, ETH_ALEN);
}
