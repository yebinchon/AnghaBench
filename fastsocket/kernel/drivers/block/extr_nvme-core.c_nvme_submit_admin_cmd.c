
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvme_dev {int * queues; } ;
struct nvme_command {int dummy; } ;


 int ADMIN_TIMEOUT ;
 int nvme_submit_sync_cmd (int ,struct nvme_command*,int *,int ) ;

int nvme_submit_admin_cmd(struct nvme_dev *dev, struct nvme_command *cmd,
        u32 *result)
{
 return nvme_submit_sync_cmd(dev->queues[0], cmd, result, ADMIN_TIMEOUT);
}
