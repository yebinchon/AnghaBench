
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_boot_kobj {int dummy; } ;
struct beiscsi_hba {int boot_kset; TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 int ENOMEM ;
 int beiscsi_boot_release ;
 int beiscsi_eth_get_attr_visibility ;
 scalar_t__ beiscsi_get_boot_info (struct beiscsi_hba*) ;
 int beiscsi_ini_get_attr_visibility ;
 int beiscsi_show_boot_eth_info ;
 int beiscsi_show_boot_ini_info ;
 int beiscsi_show_boot_tgt_info ;
 int beiscsi_tgt_get_attr_visibility ;
 struct iscsi_boot_kobj* iscsi_boot_create_ethernet (int ,int ,struct beiscsi_hba*,int ,int ,int ) ;
 int iscsi_boot_create_host_kset (int ) ;
 struct iscsi_boot_kobj* iscsi_boot_create_initiator (int ,int ,struct beiscsi_hba*,int ,int ,int ) ;
 struct iscsi_boot_kobj* iscsi_boot_create_target (int ,int ,struct beiscsi_hba*,int ,int ,int ) ;
 int iscsi_boot_destroy_kset (int ) ;
 int scsi_host_get (TYPE_1__*) ;
 int scsi_host_put (TYPE_1__*) ;

__attribute__((used)) static int beiscsi_setup_boot_info(struct beiscsi_hba *phba)
{
 struct iscsi_boot_kobj *boot_kobj;


 if (beiscsi_get_boot_info(phba))

  return 0;

 phba->boot_kset = iscsi_boot_create_host_kset(phba->shost->host_no);
 if (!phba->boot_kset)
  return -ENOMEM;


 if (!scsi_host_get(phba->shost))
  goto free_kset;
 boot_kobj = iscsi_boot_create_target(phba->boot_kset, 0, phba,
          beiscsi_show_boot_tgt_info,
          beiscsi_tgt_get_attr_visibility,
          beiscsi_boot_release);
 if (!boot_kobj)
  goto put_shost;

 if (!scsi_host_get(phba->shost))
  goto free_kset;
 boot_kobj = iscsi_boot_create_initiator(phba->boot_kset, 0, phba,
      beiscsi_show_boot_ini_info,
      beiscsi_ini_get_attr_visibility,
      beiscsi_boot_release);
 if (!boot_kobj)
  goto put_shost;

 if (!scsi_host_get(phba->shost))
  goto free_kset;
 boot_kobj = iscsi_boot_create_ethernet(phba->boot_kset, 0, phba,
            beiscsi_show_boot_eth_info,
            beiscsi_eth_get_attr_visibility,
            beiscsi_boot_release);
 if (!boot_kobj)
  goto put_shost;
 return 0;

put_shost:
 scsi_host_put(phba->shost);
free_kset:
 iscsi_boot_destroy_kset(phba->boot_kset);
 return -ENOMEM;
}
