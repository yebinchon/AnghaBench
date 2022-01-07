
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {int queue; } ;


 int DVB_RINGBUFFER_WRITE_BYTE (struct dvb_ringbuffer*,int) ;
 int dvb_ringbuffer_free (struct dvb_ringbuffer*) ;
 int dvb_ringbuffer_write (struct dvb_ringbuffer*,int *,int) ;
 int wake_up_interruptible (int *) ;

void ci_get_data(struct dvb_ringbuffer *cibuf, u8 *data, int len)
{
 if (dvb_ringbuffer_free(cibuf) < len + 2)
  return;

 DVB_RINGBUFFER_WRITE_BYTE(cibuf, len >> 8);
 DVB_RINGBUFFER_WRITE_BYTE(cibuf, len & 0xff);
 dvb_ringbuffer_write(cibuf, data, len);
 wake_up_interruptible(&cibuf->queue);
}
