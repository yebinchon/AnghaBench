
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_queue {int dummy; } ;
struct nvme_ns {int dev; int ns_id; } ;
struct TYPE_2__ {int nsid; int opcode; } ;
struct nvme_command {TYPE_1__ common; } ;
typedef int c ;


 int NVME_IO_TIMEOUT ;
 int SNTI_TRANSLATION_SUCCESS ;
 int cpu_to_le32 (int ) ;
 struct nvme_queue* get_nvmeq (int ) ;
 int memset (struct nvme_command*,int ,int) ;
 int nvme_cmd_flush ;
 int nvme_submit_sync_cmd (struct nvme_queue*,struct nvme_command*,int *,int ) ;
 int nvme_trans_status_code (struct sg_io_hdr*,int) ;
 int put_nvmeq (struct nvme_queue*) ;

__attribute__((used)) static int nvme_trans_synchronize_cache(struct nvme_ns *ns,
     struct sg_io_hdr *hdr, u8 *cmd)
{
 int res = SNTI_TRANSLATION_SUCCESS;
 int nvme_sc;
 struct nvme_command c;
 struct nvme_queue *nvmeq;

 memset(&c, 0, sizeof(c));
 c.common.opcode = nvme_cmd_flush;
 c.common.nsid = cpu_to_le32(ns->ns_id);

 nvmeq = get_nvmeq(ns->dev);
 put_nvmeq(nvmeq);
 nvme_sc = nvme_submit_sync_cmd(nvmeq, &c, ((void*)0), NVME_IO_TIMEOUT);

 res = nvme_trans_status_code(hdr, nvme_sc);
 if (res)
  goto out;
 if (nvme_sc)
  res = nvme_sc;

 out:
 return res;
}
