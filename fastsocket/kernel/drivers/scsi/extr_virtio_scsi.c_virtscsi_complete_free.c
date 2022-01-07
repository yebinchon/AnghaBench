
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_cmd {scalar_t__ comp; } ;


 int complete_all (scalar_t__) ;
 int mempool_free (struct virtio_scsi_cmd*,int ) ;
 int virtscsi_cmd_pool ;

__attribute__((used)) static void virtscsi_complete_free(void *buf)
{
 struct virtio_scsi_cmd *cmd = buf;

 if (cmd->comp)
  complete_all(cmd->comp);
 else
  mempool_free(cmd, virtscsi_cmd_pool);
}
