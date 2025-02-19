
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct qlcnic_nic_req {void** words; void* req_hdr; void* qhdr; } ;
struct qlcnic_adapter {TYPE_2__* netdev; TYPE_1__* ahw; scalar_t__ portnum; int state; } ;
struct cmd_desc_type0 {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int capabilities2; } ;


 int QLCNIC_ENABLE_IPV4_LRO ;
 int QLCNIC_ENABLE_IPV6_LRO ;
 int QLCNIC_FW_CAP2_HW_LRO_IPV6 ;
 int QLCNIC_H2C_OPCODE_CONFIG_HW_LRO ;
 int QLCNIC_HOST_REQUEST ;
 int QLCNIC_NO_DEST_IPV4_CHECK ;
 int QLCNIC_NO_DEST_IPV6_CHECK ;
 int __QLCNIC_FW_ATTACHED ;
 void* cpu_to_le64 (int) ;
 int dev_err (int *,char*) ;
 int memset (struct qlcnic_nic_req*,int ,int) ;
 int qlcnic_send_cmd_descs (struct qlcnic_adapter*,struct cmd_desc_type0*,int) ;
 int test_bit (int ,int *) ;

int qlcnic_82xx_config_hw_lro(struct qlcnic_adapter *adapter, int enable)
{
 struct qlcnic_nic_req req;
 u64 word;
 int rv;

 if (!test_bit(__QLCNIC_FW_ATTACHED, &adapter->state))
  return 0;

 memset(&req, 0, sizeof(struct qlcnic_nic_req));

 req.qhdr = cpu_to_le64(QLCNIC_HOST_REQUEST << 23);

 word = QLCNIC_H2C_OPCODE_CONFIG_HW_LRO | ((u64)adapter->portnum << 16);
 req.req_hdr = cpu_to_le64(word);

 word = 0;
 if (enable) {
  word = QLCNIC_ENABLE_IPV4_LRO | QLCNIC_NO_DEST_IPV4_CHECK;
  if (adapter->ahw->capabilities2 & QLCNIC_FW_CAP2_HW_LRO_IPV6)
   word |= QLCNIC_ENABLE_IPV6_LRO |
    QLCNIC_NO_DEST_IPV6_CHECK;
 }

 req.words[0] = cpu_to_le64(word);

 rv = qlcnic_send_cmd_descs(adapter, (struct cmd_desc_type0 *)&req, 1);
 if (rv != 0)
  dev_err(&adapter->netdev->dev,
   "Could not send configure hw lro request\n");

 return rv;
}
