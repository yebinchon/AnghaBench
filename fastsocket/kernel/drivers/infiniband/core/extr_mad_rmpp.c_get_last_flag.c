
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rmpp_mad {int rmpp_hdr; } ;
struct ib_mad_recv_buf {scalar_t__ mad; } ;


 int IB_MGMT_RMPP_FLAG_LAST ;
 int ib_get_rmpp_flags (int *) ;

__attribute__((used)) static inline int get_last_flag(struct ib_mad_recv_buf *seg)
{
 struct ib_rmpp_mad *rmpp_mad;

 rmpp_mad = (struct ib_rmpp_mad *) seg->mad;
 return ib_get_rmpp_flags(&rmpp_mad->rmpp_hdr) & IB_MGMT_RMPP_FLAG_LAST;
}
