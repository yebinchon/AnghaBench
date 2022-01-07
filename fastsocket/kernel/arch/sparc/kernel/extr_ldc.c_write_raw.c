
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_packet {int dummy; } ;
struct ldc_channel {int dummy; } ;


 int EAGAIN ;
 int EMSGSIZE ;
 unsigned int LDC_PACKET_SIZE ;
 struct ldc_packet* data_get_tx_packet (struct ldc_channel*,unsigned long*) ;
 int memcpy (struct ldc_packet*,void const*,unsigned int) ;
 int send_tx_packet (struct ldc_channel*,struct ldc_packet*,unsigned long) ;

__attribute__((used)) static int write_raw(struct ldc_channel *lp, const void *buf, unsigned int size)
{
 struct ldc_packet *p;
 unsigned long new_tail;
 int err;

 if (size > LDC_PACKET_SIZE)
  return -EMSGSIZE;

 p = data_get_tx_packet(lp, &new_tail);
 if (!p)
  return -EAGAIN;

 memcpy(p, buf, size);

 err = send_tx_packet(lp, p, new_tail);
 if (!err)
  err = size;

 return err;
}
