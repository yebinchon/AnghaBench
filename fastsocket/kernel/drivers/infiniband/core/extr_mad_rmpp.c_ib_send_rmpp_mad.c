
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rmpp_type; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; } ;
struct TYPE_3__ {struct ib_rmpp_mad* mad; } ;
struct ib_mad_send_wr_private {int seg_num; int refcount; scalar_t__ timeout; int newwin; TYPE_1__ send_buf; } ;


 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 scalar_t__ IB_MGMT_RMPP_TYPE_DATA ;
 int IB_RMPP_RESULT_CONSUMED ;
 int IB_RMPP_RESULT_INTERNAL ;
 int IB_RMPP_RESULT_UNHANDLED ;
 int ib_get_rmpp_flags (TYPE_2__*) ;
 int init_newwin (struct ib_mad_send_wr_private*) ;
 int send_next_seg (struct ib_mad_send_wr_private*) ;

int ib_send_rmpp_mad(struct ib_mad_send_wr_private *mad_send_wr)
{
 struct ib_rmpp_mad *rmpp_mad;
 int ret;

 rmpp_mad = mad_send_wr->send_buf.mad;
 if (!(ib_get_rmpp_flags(&rmpp_mad->rmpp_hdr) &
       IB_MGMT_RMPP_FLAG_ACTIVE))
  return IB_RMPP_RESULT_UNHANDLED;

 if (rmpp_mad->rmpp_hdr.rmpp_type != IB_MGMT_RMPP_TYPE_DATA) {
  mad_send_wr->seg_num = 1;
  return IB_RMPP_RESULT_INTERNAL;
 }

 mad_send_wr->newwin = init_newwin(mad_send_wr);


 mad_send_wr->refcount += (mad_send_wr->timeout == 0);
 ret = send_next_seg(mad_send_wr);
 if (!ret)
  return IB_RMPP_RESULT_CONSUMED;
 return ret;
}
