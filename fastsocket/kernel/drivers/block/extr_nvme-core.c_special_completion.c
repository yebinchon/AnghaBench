
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_dev {TYPE_1__* pci_dev; } ;
struct nvme_completion {int sq_id; int command_id; } ;
struct TYPE_2__ {int dev; } ;


 void* CMD_CTX_CANCELLED ;
 void* CMD_CTX_COMPLETED ;
 void* CMD_CTX_FLUSH ;
 void* CMD_CTX_INVALID ;
 int dev_warn (int *,char*,void*,...) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static void special_completion(struct nvme_dev *dev, void *ctx,
      struct nvme_completion *cqe)
{
 if (ctx == CMD_CTX_CANCELLED)
  return;
 if (ctx == CMD_CTX_FLUSH)
  return;
 if (ctx == CMD_CTX_COMPLETED) {
  dev_warn(&dev->pci_dev->dev,
    "completed id %d twice on queue %d\n",
    cqe->command_id, le16_to_cpup(&cqe->sq_id));
  return;
 }
 if (ctx == CMD_CTX_INVALID) {
  dev_warn(&dev->pci_dev->dev,
    "invalid id %d completed on queue %d\n",
    cqe->command_id, le16_to_cpup(&cqe->sq_id));
  return;
 }

 dev_warn(&dev->pci_dev->dev, "Unknown special completion %p\n", ctx);
}
