
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_cmd_info {int status; int task; int result; } ;
struct nvme_dev {int dummy; } ;
struct nvme_completion {int status; int result; } ;


 int le16_to_cpup (int *) ;
 int le32_to_cpup (int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void sync_completion(struct nvme_dev *dev, void *ctx,
      struct nvme_completion *cqe)
{
 struct sync_cmd_info *cmdinfo = ctx;
 cmdinfo->result = le32_to_cpup(&cqe->result);
 cmdinfo->status = le16_to_cpup(&cqe->status) >> 1;
 wake_up_process(cmdinfo->task);
}
