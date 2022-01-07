
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_wc {int dummy; } ;
struct TYPE_2__ {int mgmt_class; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_MAD_RESULT_SUCCESS ;



 int process_perf (struct ib_device*,int ,struct ib_mad*,struct ib_mad*) ;
 int process_subn (struct ib_device*,int,int ,struct ib_mad*,struct ib_mad*) ;

int ipath_process_mad(struct ib_device *ibdev, int mad_flags, u8 port_num,
        struct ib_wc *in_wc, struct ib_grh *in_grh,
        struct ib_mad *in_mad, struct ib_mad *out_mad)
{
 int ret;

 switch (in_mad->mad_hdr.mgmt_class) {
 case 129:
 case 128:
  ret = process_subn(ibdev, mad_flags, port_num,
       in_mad, out_mad);
  goto bail;
 case 130:
  ret = process_perf(ibdev, port_num, in_mad, out_mad);
  goto bail;
 default:
  ret = IB_MAD_RESULT_SUCCESS;
 }

bail:
 return ret;
}
