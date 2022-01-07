
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int timeout_ms; int retries; } ;
struct ib_mad_send_wr_private {TYPE_2__* mad_agent_priv; int agent_list; int refcount; TYPE_3__ send_buf; int timeout; int retries_left; } ;
struct TYPE_4__ {scalar_t__ rmpp_version; } ;
struct TYPE_5__ {int send_list; TYPE_1__ agent; } ;


 int ECOMM ;
 int ETIMEDOUT ;


 int ib_retry_rmpp (struct ib_mad_send_wr_private*) ;
 int ib_send_mad (struct ib_mad_send_wr_private*) ;
 int list_add_tail (int *,int *) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static int retry_send(struct ib_mad_send_wr_private *mad_send_wr)
{
 int ret;

 if (!mad_send_wr->retries_left)
  return -ETIMEDOUT;

 mad_send_wr->retries_left--;
 mad_send_wr->send_buf.retries++;

 mad_send_wr->timeout = msecs_to_jiffies(mad_send_wr->send_buf.timeout_ms);

 if (mad_send_wr->mad_agent_priv->agent.rmpp_version) {
  ret = ib_retry_rmpp(mad_send_wr);
  switch (ret) {
  case 128:
   ret = ib_send_mad(mad_send_wr);
   break;
  case 129:
   ret = 0;
   break;
  default:
   ret = -ECOMM;
   break;
  }
 } else
  ret = ib_send_mad(mad_send_wr);

 if (!ret) {
  mad_send_wr->refcount++;
  list_add_tail(&mad_send_wr->agent_list,
         &mad_send_wr->mad_agent_priv->send_list);
 }
 return ret;
}
