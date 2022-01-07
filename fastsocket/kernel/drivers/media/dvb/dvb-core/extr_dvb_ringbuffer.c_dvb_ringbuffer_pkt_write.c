
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {int pwrite; } ;
typedef int ssize_t ;


 int DVB_RINGBUFFER_WRITE_BYTE (struct dvb_ringbuffer*,size_t) ;
 size_t PKT_READY ;
 int dvb_ringbuffer_write (struct dvb_ringbuffer*,int *,size_t) ;

ssize_t dvb_ringbuffer_pkt_write(struct dvb_ringbuffer *rbuf, u8* buf, size_t len)
{
 int status;
 ssize_t oldpwrite = rbuf->pwrite;

 DVB_RINGBUFFER_WRITE_BYTE(rbuf, len >> 8);
 DVB_RINGBUFFER_WRITE_BYTE(rbuf, len & 0xff);
 DVB_RINGBUFFER_WRITE_BYTE(rbuf, PKT_READY);
 status = dvb_ringbuffer_write(rbuf, buf, len);

 if (status < 0) rbuf->pwrite = oldpwrite;
 return status;
}
