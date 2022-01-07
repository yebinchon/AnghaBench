
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int cmd_buf_size; scalar_t__ mmio_base; int * cmd_buf; } ;


 int CMD_BUFFER_UNINITIALIZED ;
 int ENOMEM ;
 scalar_t__ MMIO_CMD_HEAD_OFFSET ;
 scalar_t__ MMIO_CMD_TAIL_OFFSET ;
 int WARN_ON (int) ;
 int memcpy_toio (int *,struct iommu_cmd*,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int __iommu_queue_command(struct amd_iommu *iommu, struct iommu_cmd *cmd)
{
 u32 tail, head;
 u8 *target;

 WARN_ON(iommu->cmd_buf_size & CMD_BUFFER_UNINITIALIZED);
 tail = readl(iommu->mmio_base + MMIO_CMD_TAIL_OFFSET);
 target = iommu->cmd_buf + tail;
 memcpy_toio(target, cmd, sizeof(*cmd));
 tail = (tail + sizeof(*cmd)) % iommu->cmd_buf_size;
 head = readl(iommu->mmio_base + MMIO_CMD_HEAD_OFFSET);
 if (tail == head)
  return -ENOMEM;
 writel(tail, iommu->mmio_base + MMIO_CMD_TAIL_OFFSET);

 return 0;
}
