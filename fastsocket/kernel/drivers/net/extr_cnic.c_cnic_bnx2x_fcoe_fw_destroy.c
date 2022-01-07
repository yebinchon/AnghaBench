
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union l5cm_specific_data {int dummy; } l5cm_specific_data ;
typedef int u32 ;
struct kwqe {int dummy; } ;
struct fcoe_kwqe_destroy {int dummy; } ;
struct cnic_local {int fcoe_init_cid; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;
typedef int l5_data ;


 int BNX2X_HW_CID (struct cnic_local*,int ) ;
 int FCOE_CONNECTION_TYPE ;
 int FCOE_RAMROD_CMD_ID_DESTROY_FUNC ;
 int MAX_ISCSI_TBL_SZ ;
 int cnic_bnx2x_delete_wait (struct cnic_dev*,int ) ;
 int cnic_submit_kwqe_16 (struct cnic_dev*,int ,int ,int ,union l5cm_specific_data*) ;
 int memset (union l5cm_specific_data*,int ,int) ;

__attribute__((used)) static int cnic_bnx2x_fcoe_fw_destroy(struct cnic_dev *dev, struct kwqe *kwqe)
{
 struct fcoe_kwqe_destroy *req;
 union l5cm_specific_data l5_data;
 struct cnic_local *cp = dev->cnic_priv;
 int ret;
 u32 cid;

 cnic_bnx2x_delete_wait(dev, MAX_ISCSI_TBL_SZ);

 req = (struct fcoe_kwqe_destroy *) kwqe;
 cid = BNX2X_HW_CID(cp, cp->fcoe_init_cid);

 memset(&l5_data, 0, sizeof(l5_data));
 ret = cnic_submit_kwqe_16(dev, FCOE_RAMROD_CMD_ID_DESTROY_FUNC, cid,
      FCOE_CONNECTION_TYPE, &l5_data);
 return ret;
}
