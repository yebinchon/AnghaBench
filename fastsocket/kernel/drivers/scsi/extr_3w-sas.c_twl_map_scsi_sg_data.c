
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int have_data_in; int phase; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_5__ {int host; struct scsi_cmnd** srb; } ;
typedef TYPE_2__ TW_Device_Extension ;


 int TW_DRIVER ;
 int TW_PHASE_SGLIST ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int scsi_dma_map (struct scsi_cmnd*) ;

__attribute__((used)) static int twl_map_scsi_sg_data(TW_Device_Extension *tw_dev, int request_id)
{
 int use_sg;
 struct scsi_cmnd *cmd = tw_dev->srb[request_id];

 use_sg = scsi_dma_map(cmd);
 if (!use_sg)
  return 0;
 else if (use_sg < 0) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0x1, "Failed to map scatter gather list");
  return 0;
 }

 cmd->SCp.phase = TW_PHASE_SGLIST;
 cmd->SCp.have_data_in = use_sg;

 return use_sg;
}
