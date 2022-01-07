
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vmpacket_descriptor {int len8; int offset8; int trans_id; } ;
struct vmbus_channel {int inbound; } ;


 int ETOOSMALL ;
 int hv_ringbuffer_peek (int *,struct vmpacket_descriptor*,int) ;
 int hv_ringbuffer_read (int *,void*,int,int,int*) ;
 int pr_err (char*,int,int) ;
 int vmbus_setevent (struct vmbus_channel*) ;

int vmbus_recvpacket(struct vmbus_channel *channel, void *buffer,
   u32 bufferlen, u32 *buffer_actual_len, u64 *requestid)
{
 struct vmpacket_descriptor desc;
 u32 packetlen;
 u32 userlen;
 int ret;
 bool signal = 0;

 *buffer_actual_len = 0;
 *requestid = 0;


 ret = hv_ringbuffer_peek(&channel->inbound, &desc,
        sizeof(struct vmpacket_descriptor));
 if (ret != 0)
  return 0;

 packetlen = desc.len8 << 3;
 userlen = packetlen - (desc.offset8 << 3);

 *buffer_actual_len = userlen;

 if (userlen > bufferlen) {

  pr_err("Buffer too small - got %d needs %d\n",
      bufferlen, userlen);
  return -ETOOSMALL;
 }

 *requestid = desc.trans_id;


 ret = hv_ringbuffer_read(&channel->inbound, buffer, userlen,
        (desc.offset8 << 3), &signal);

 if (signal)
  vmbus_setevent(channel);

 return 0;
}
