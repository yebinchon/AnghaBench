
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_dev {int dummy; } ;
struct TYPE_2__ {void* cns; int prp1; void* nsid; int opcode; } ;
struct nvme_command {TYPE_1__ identify; } ;
typedef int dma_addr_t ;
typedef int c ;


 void* cpu_to_le32 (unsigned int) ;
 int cpu_to_le64 (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_admin_identify ;
 int nvme_submit_admin_cmd (struct nvme_dev*,struct nvme_command*,int *) ;

int nvme_identify(struct nvme_dev *dev, unsigned nsid, unsigned cns,
       dma_addr_t dma_addr)
{
 struct nvme_command c;

 memset(&c, 0, sizeof(c));
 c.identify.opcode = nvme_admin_identify;
 c.identify.nsid = cpu_to_le32(nsid);
 c.identify.prp1 = cpu_to_le64(dma_addr);
 c.identify.cns = cpu_to_le32(cns);

 return nvme_submit_admin_cmd(dev, &c, ((void*)0));
}
