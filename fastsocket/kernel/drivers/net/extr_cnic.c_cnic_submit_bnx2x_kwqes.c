
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kwqe {int kwqe_op_flag; } ;
struct cnic_dev {int flags; } ;


 int CNIC_F_CNIC_UP ;
 int EAGAIN ;
 int EINVAL ;




 int KWQE_LAYER_MASK ;
 int cnic_submit_bnx2x_fcoe_kwqes (struct cnic_dev*,struct kwqe**,int) ;
 int cnic_submit_bnx2x_iscsi_kwqes (struct cnic_dev*,struct kwqe**,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cnic_submit_bnx2x_kwqes(struct cnic_dev *dev, struct kwqe *wqes[],
       u32 num_wqes)
{
 int ret = -EINVAL;
 u32 layer_code;

 if (!test_bit(CNIC_F_CNIC_UP, &dev->flags))
  return -EAGAIN;

 if (!num_wqes)
  return 0;

 layer_code = wqes[0]->kwqe_op_flag & KWQE_LAYER_MASK;
 switch (layer_code) {
 case 128:
 case 130:
 case 131:
  ret = cnic_submit_bnx2x_iscsi_kwqes(dev, wqes, num_wqes);
  break;

 case 129:
  ret = cnic_submit_bnx2x_fcoe_kwqes(dev, wqes, num_wqes);
  break;
 }
 return ret;
}
