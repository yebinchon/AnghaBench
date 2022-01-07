
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* fid; int prp1; void* nsid; int opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef int dma_addr_t ;
typedef int c ;


 void* cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_get_features ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;

int nvme_get_features(struct nvme_dev *dev, unsigned fid, unsigned nsid,
     dma_addr_t dma_addr, u32 *result)
{
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 c.features.opcode = nvme_admin_get_features;
 c.features.nsid = cpu_to_le32(nsid);
 c.features.prp1 = cpu_to_le64(dma_addr);
 c.features.fid = cpu_to_le32(fid);

 return nvme_submit_admin_cmd(dev, &c, result);
}
