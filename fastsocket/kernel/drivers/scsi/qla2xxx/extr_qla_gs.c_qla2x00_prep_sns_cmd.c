
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {void* size; void* subcommand; void* subcommand_length; void** buffer_address; void* buffer_length; } ;
struct TYPE_6__ {TYPE_1__ cmd; } ;
struct sns_cmd_pkt {TYPE_2__ p; } ;
struct qla_hw_data {int sns_cmd_dma; struct sns_cmd_pkt* sns_cmd; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;


 int LSD (int ) ;
 int MSD (int ) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int memset (struct sns_cmd_pkt*,int ,int) ;

__attribute__((used)) static inline struct sns_cmd_pkt *
qla2x00_prep_sns_cmd(scsi_qla_host_t *vha, uint16_t cmd, uint16_t scmd_len,
    uint16_t data_size)
{
 uint16_t wc;
 struct sns_cmd_pkt *sns_cmd;
 struct qla_hw_data *ha = vha->hw;

 sns_cmd = ha->sns_cmd;
 memset(sns_cmd, 0, sizeof(struct sns_cmd_pkt));
 wc = data_size / 2;
 sns_cmd->p.cmd.buffer_length = cpu_to_le16(wc);
 sns_cmd->p.cmd.buffer_address[0] = cpu_to_le32(LSD(ha->sns_cmd_dma));
 sns_cmd->p.cmd.buffer_address[1] = cpu_to_le32(MSD(ha->sns_cmd_dma));
 sns_cmd->p.cmd.subcommand_length = cpu_to_le16(scmd_len);
 sns_cmd->p.cmd.subcommand = cpu_to_le16(cmd);
 wc = (data_size - 16) / 4;
 sns_cmd->p.cmd.size = cpu_to_le16(wc);

 return (sns_cmd);
}
