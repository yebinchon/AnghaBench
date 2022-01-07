
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ocrdma_fw_conf_rsp {int fn_mode; int max_eq; int base_eqid; } ;
struct TYPE_2__ {scalar_t__ max_cq; } ;
struct ocrdma_dev {TYPE_1__ attr; int max_eq; int base_eqid; } ;


 int EINVAL ;
 int OCRDMA_FN_MODE_RDMA ;
 scalar_t__ OCRDMA_MAX_CQ ;

__attribute__((used)) static int ocrdma_check_fw_config(struct ocrdma_dev *dev,
       struct ocrdma_fw_conf_rsp *conf)
{
 u32 fn_mode;

 fn_mode = conf->fn_mode & OCRDMA_FN_MODE_RDMA;
 if (fn_mode != OCRDMA_FN_MODE_RDMA)
  return -EINVAL;
 dev->base_eqid = conf->base_eqid;
 dev->max_eq = conf->max_eq;
 dev->attr.max_cq = OCRDMA_MAX_CQ - 1;
 return 0;
}
