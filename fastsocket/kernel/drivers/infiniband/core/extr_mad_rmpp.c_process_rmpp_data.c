
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_rmpp_hdr {scalar_t__ seg_num; scalar_t__ rmpp_status; } ;
struct ib_rmpp_mad {struct ib_rmpp_hdr rmpp_hdr; } ;
struct TYPE_2__ {scalar_t__ mad; } ;
struct ib_mad_recv_wc {TYPE_1__ recv_buf; } ;
struct ib_mad_agent_private {int dummy; } ;


 int IB_MGMT_RMPP_FLAG_FIRST ;
 int IB_MGMT_RMPP_STATUS_BAD_SEG ;
 int IB_MGMT_RMPP_STATUS_BAD_STATUS ;
 struct ib_mad_recv_wc* continue_rmpp (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;
 scalar_t__ cpu_to_be32 (int) ;
 int ib_free_recv_mad (struct ib_mad_recv_wc*) ;
 int ib_get_rmpp_flags (struct ib_rmpp_hdr*) ;
 int nack_recv (struct ib_mad_agent_private*,struct ib_mad_recv_wc*,int ) ;
 struct ib_mad_recv_wc* start_rmpp (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ;

__attribute__((used)) static struct ib_mad_recv_wc *
process_rmpp_data(struct ib_mad_agent_private *agent,
    struct ib_mad_recv_wc *mad_recv_wc)
{
 struct ib_rmpp_hdr *rmpp_hdr;
 u8 rmpp_status;

 rmpp_hdr = &((struct ib_rmpp_mad *)mad_recv_wc->recv_buf.mad)->rmpp_hdr;

 if (rmpp_hdr->rmpp_status) {
  rmpp_status = IB_MGMT_RMPP_STATUS_BAD_STATUS;
  goto bad;
 }

 if (rmpp_hdr->seg_num == cpu_to_be32(1)) {
  if (!(ib_get_rmpp_flags(rmpp_hdr) & IB_MGMT_RMPP_FLAG_FIRST)) {
   rmpp_status = IB_MGMT_RMPP_STATUS_BAD_SEG;
   goto bad;
  }
  return start_rmpp(agent, mad_recv_wc);
 } else {
  if (ib_get_rmpp_flags(rmpp_hdr) & IB_MGMT_RMPP_FLAG_FIRST) {
   rmpp_status = IB_MGMT_RMPP_STATUS_BAD_SEG;
   goto bad;
  }
  return continue_rmpp(agent, mad_recv_wc);
 }
bad:
 nack_recv(agent, mad_recv_wc, rmpp_status);
 ib_free_recv_mad(mad_recv_wc);
 return ((void*)0);
}
