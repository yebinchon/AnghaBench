
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kwqe {int kwqe_op_flag; } ;
struct cnic_dev {int (* submit_kwqes ) (struct cnic_dev*,struct kwqe**,int) ;} ;
typedef int l2kwqe ;


 int KWQE_LAYER_SHIFT ;
 int KWQE_OPCODE_SHIFT ;
 int L2_KWQE_OPCODE_VALUE_FLUSH ;
 int L2_LAYER_CODE ;
 int memset (struct kwqe*,int ,int) ;
 int stub1 (struct cnic_dev*,struct kwqe**,int) ;

__attribute__((used)) static void cnic_shutdown_bnx2_rx_ring(struct cnic_dev *dev)
{
 struct kwqe *wqes[1], l2kwqe;

 memset(&l2kwqe, 0, sizeof(l2kwqe));
 wqes[0] = &l2kwqe;
 l2kwqe.kwqe_op_flag = (L2_LAYER_CODE << KWQE_LAYER_SHIFT) |
         (L2_KWQE_OPCODE_VALUE_FLUSH <<
          KWQE_OPCODE_SHIFT) | 2;
 dev->submit_kwqes(dev, wqes, 1);
}
