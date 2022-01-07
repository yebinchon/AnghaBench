
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mad_rmpp_recv {int seg_num; TYPE_2__* cur_seg_buf; } ;
struct TYPE_4__ {int paylen_newwin; } ;
struct TYPE_6__ {int mgmt_class; } ;
struct ib_rmpp_mad {TYPE_1__ rmpp_hdr; TYPE_3__ mad_hdr; } ;
struct TYPE_5__ {scalar_t__ mad; } ;


 int IB_MGMT_RMPP_DATA ;
 int be32_to_cpu (int ) ;
 int ib_get_mad_data_offset (int ) ;

__attribute__((used)) static inline int get_mad_len(struct mad_rmpp_recv *rmpp_recv)
{
 struct ib_rmpp_mad *rmpp_mad;
 int hdr_size, data_size, pad;

 rmpp_mad = (struct ib_rmpp_mad *)rmpp_recv->cur_seg_buf->mad;

 hdr_size = ib_get_mad_data_offset(rmpp_mad->mad_hdr.mgmt_class);
 data_size = sizeof(struct ib_rmpp_mad) - hdr_size;
 pad = IB_MGMT_RMPP_DATA - be32_to_cpu(rmpp_mad->rmpp_hdr.paylen_newwin);
 if (pad > IB_MGMT_RMPP_DATA || pad < 0)
  pad = 0;

 return hdr_size + rmpp_recv->seg_num * data_size - pad;
}
