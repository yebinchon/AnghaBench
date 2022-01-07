
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct qlcnic_nic_req {void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_1__* netdev; scalar_t__ portnum; int state; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int QLCNIC_H2C_OPCODE_LRO_REQUEST ;
 int QLCNIC_HOST_REQUEST ;
 scalar_t__ QLCNIC_LRO_REQUEST_CLEANUP ;
 int __QLCNIC_FW_ATTACHED ;
 void* cpu_to_le64 (int) ;
 int dev_err (int *,char*) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int qlcnic_send_cmd_descs (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ;
 int test_bit (int ,int *) ;

int qlcnic_send_lro_cleanup(struct qlcnic_adapter *adapter)
{
 struct qlcnic_nic_req req;
 u64 word;
 int rv;

 if (!test_bit(__QLCNIC_FW_ATTACHED, &adapter->state))
  return 0;

 memset(&req, 0, sizeof(struct qlcnic_nic_req));
 req.qhdr = cpu_to_le64(QLCNIC_HOST_REQUEST << 23);

 word = QLCNIC_H2C_OPCODE_LRO_REQUEST |
  ((u64)adapter->portnum << 16) |
  ((u64)QLCNIC_LRO_REQUEST_CLEANUP << 56) ;

 req.req_hdr = cpu_to_le64(word);

 rv = qlcnic_send_cmd_descs(adapter, (struct cmd_desc_type0 *)&req, 1);
 if (rv != 0)
  dev_err(&adapter->netdev->dev,
     "could not cleanup lro flows\n");

 return rv;
}
