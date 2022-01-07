
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kwqe {int kwqe_op_flag; } ;
struct cnic_dev {int netdev; int flags; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_CHIP_IS_E2_PLUS (struct bnx2x*) ;
 int CNIC_F_CNIC_UP ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;







 int KWQE_OPCODE (int ) ;
 int cnic_bnx2x_fcoe_destroy (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_fcoe_disable (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_fcoe_enable (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_fcoe_fw_destroy (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_fcoe_init1 (struct cnic_dev*,struct kwqe**,int,int*) ;
 int cnic_bnx2x_fcoe_ofld1 (struct cnic_dev*,struct kwqe**,int,int*) ;
 int cnic_bnx2x_fcoe_stat (struct cnic_dev*,struct kwqe*) ;
 int cnic_bnx2x_kwqe_err (struct cnic_dev*,struct kwqe*) ;
 int netdev_err (int ,char*,int) ;
 struct bnx2x* netdev_priv (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_submit_bnx2x_fcoe_kwqes(struct cnic_dev *dev,
     struct kwqe *wqes[], u32 num_wqes)
{
 struct bnx2x *bp = netdev_priv(dev->netdev);
 int i, work, ret;
 u32 opcode;
 struct kwqe *kwqe;

 if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EAGAIN;

 if (!BNX2X_CHIP_IS_E2_PLUS(bp))
  return -EINVAL;

 for (i = 0; i < num_wqes; ) {
  kwqe = wqes[i];
  opcode = KWQE_OPCODE(kwqe->kwqe_op_flag);
  work = 1;

  switch (opcode) {
  case 130:
   ret = cnic_bnx2x_fcoe_init1(dev, &wqes[i],
          num_wqes - i, &work);
   break;
  case 129:
   ret = cnic_bnx2x_fcoe_ofld1(dev, &wqes[i],
          num_wqes - i, &work);
   break;
  case 131:
   ret = cnic_bnx2x_fcoe_enable(dev, kwqe);
   break;
  case 132:
   ret = cnic_bnx2x_fcoe_disable(dev, kwqe);
   break;
  case 133:
   ret = cnic_bnx2x_fcoe_destroy(dev, kwqe);
   break;
  case 134:
   ret = cnic_bnx2x_fcoe_fw_destroy(dev, kwqe);
   break;
  case 128:
   ret = cnic_bnx2x_fcoe_stat(dev, kwqe);
   break;
  default:
   ret = 0;
   netdev_err(dev->netdev, "Unknown type of KWQE(0x%x)\n",
       opcode);
   break;
  }
  if (ret < 0) {
   netdev_err(dev->netdev, "KWQE(0x%x) failed\n",
       opcode);





   if (ret == -EIO || ret == -EAGAIN)
    cnic_bnx2x_kwqe_err(dev, kwqe);
  }
  i += work;
 }
 return 0;
}
