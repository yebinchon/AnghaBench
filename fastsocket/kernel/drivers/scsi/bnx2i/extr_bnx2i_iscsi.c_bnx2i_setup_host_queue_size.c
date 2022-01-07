
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2i_hba {int cnic_dev_type; } ;
struct Scsi_Host {void* can_queue; } ;


 int BNX2I_NX2_DEV_5708 ;
 int BNX2I_NX2_DEV_5709 ;
 int BNX2I_NX2_DEV_57710 ;
 void* ISCSI_MAX_CMDS_PER_HBA_5708 ;
 void* ISCSI_MAX_CMDS_PER_HBA_5709 ;
 void* ISCSI_MAX_CMDS_PER_HBA_57710 ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnx2i_setup_host_queue_size(struct bnx2i_hba *hba,
     struct Scsi_Host *shost)
{
 if (test_bit(BNX2I_NX2_DEV_5708, &hba->cnic_dev_type))
  shost->can_queue = ISCSI_MAX_CMDS_PER_HBA_5708;
 else if (test_bit(BNX2I_NX2_DEV_5709, &hba->cnic_dev_type))
  shost->can_queue = ISCSI_MAX_CMDS_PER_HBA_5709;
 else if (test_bit(BNX2I_NX2_DEV_57710, &hba->cnic_dev_type))
  shost->can_queue = ISCSI_MAX_CMDS_PER_HBA_57710;
 else
  shost->can_queue = ISCSI_MAX_CMDS_PER_HBA_5708;
}
