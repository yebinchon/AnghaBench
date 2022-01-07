
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int __data_mapped; int __data_mapping; } ;
struct device {int dummy; } ;


 int scsi_dma_map (struct scsi_cmnd*) ;

__attribute__((used)) static int __map_scsi_sg_data(struct device *dev, struct scsi_cmnd *cmd)
{
 int use_sg;

 use_sg = scsi_dma_map(cmd);
 if (!use_sg)
  return 0;

 cmd->__data_mapped = 2;
 cmd->__data_mapping = use_sg;

 return use_sg;
}
