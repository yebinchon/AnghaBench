
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_trans_io_cdb {scalar_t__ fua; } ;
struct nvme_ns {int dummy; } ;


 int NVME_RW_FUA ;

__attribute__((used)) static u16 nvme_trans_io_get_control(struct nvme_ns *ns,
     struct nvme_trans_io_cdb *cdb_info)
{
 u16 control = 0;



 if (cdb_info->fua > 0)
  control |= NVME_RW_FUA;

 return control;
}
