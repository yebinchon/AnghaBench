
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mad_rmpp_recv {int lock; int newwin; int seg_num; int last_ack; } ;
struct TYPE_4__ {void* paylen_newwin; void* seg_num; int rmpp_type; } ;
struct TYPE_3__ {int method; } ;
struct ib_rmpp_mad {TYPE_2__ rmpp_hdr; TYPE_1__ mad_hdr; } ;
struct ib_mad_send_buf {int hdr_len; struct ib_rmpp_mad* mad; } ;


 int IB_MGMT_METHOD_RESP ;
 int IB_MGMT_RMPP_FLAG_ACTIVE ;
 int IB_MGMT_RMPP_TYPE_ACK ;
 void* cpu_to_be32 (int ) ;
 int ib_set_rmpp_flags (TYPE_2__*,int ) ;
 int memcpy (struct ib_rmpp_mad*,TYPE_1__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void format_ack(struct ib_mad_send_buf *msg,
         struct ib_rmpp_mad *data,
         struct mad_rmpp_recv *rmpp_recv)
{
 struct ib_rmpp_mad *ack = msg->mad;
 unsigned long flags;

 memcpy(ack, &data->mad_hdr, msg->hdr_len);

 ack->mad_hdr.method ^= IB_MGMT_METHOD_RESP;
 ack->rmpp_hdr.rmpp_type = IB_MGMT_RMPP_TYPE_ACK;
 ib_set_rmpp_flags(&ack->rmpp_hdr, IB_MGMT_RMPP_FLAG_ACTIVE);

 spin_lock_irqsave(&rmpp_recv->lock, flags);
 rmpp_recv->last_ack = rmpp_recv->seg_num;
 ack->rmpp_hdr.seg_num = cpu_to_be32(rmpp_recv->seg_num);
 ack->rmpp_hdr.paylen_newwin = cpu_to_be32(rmpp_recv->newwin);
 spin_unlock_irqrestore(&rmpp_recv->lock, flags);
}
