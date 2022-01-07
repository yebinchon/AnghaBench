
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subnet_prefix; } ;
union ib_gid {int * raw; TYPE_1__ global; } ;
struct ocrdma_dev {union ib_gid* sgid_tbl; } ;


 int cpu_to_be64 (int) ;
 int ocrdma_get_guid (struct ocrdma_dev*,int *) ;

__attribute__((used)) static void ocrdma_add_default_sgid(struct ocrdma_dev *dev)
{

 union ib_gid *sgid = &dev->sgid_tbl[0];

 sgid->global.subnet_prefix = cpu_to_be64(0xfe80000000000000LL);
 ocrdma_get_guid(dev, &sgid->raw[8]);
}
