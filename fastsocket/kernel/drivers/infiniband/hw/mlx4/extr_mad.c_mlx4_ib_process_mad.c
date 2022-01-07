
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ib_wc {int dummy; } ;
struct ib_mad {int dummy; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;


 int ib_process_mad (struct ib_device*,int,int ,struct ib_wc*,struct ib_grh*,struct ib_mad*,struct ib_mad*) ;
 int iboe_process_mad (struct ib_device*,int,int ,struct ib_wc*,struct ib_grh*,struct ib_mad*,struct ib_mad*) ;
 int rdma_port_get_link_layer (struct ib_device*,int ) ;

int mlx4_ib_process_mad(struct ib_device *ibdev, int mad_flags, u8 port_num,
   struct ib_wc *in_wc, struct ib_grh *in_grh,
   struct ib_mad *in_mad, struct ib_mad *out_mad)
{
 switch (rdma_port_get_link_layer(ibdev, port_num)) {
 case 128:
  return ib_process_mad(ibdev, mad_flags, port_num, in_wc,
          in_grh, in_mad, out_mad);
 case 129:
  return iboe_process_mad(ibdev, mad_flags, port_num, in_wc,
       in_grh, in_mad, out_mad);
 default:
  return -EINVAL;
 }
}
