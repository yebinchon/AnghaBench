
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {int data; } ;
typedef size_t ssize_t ;


 int EOVERFLOW ;
 int dprintk (char*) ;
 size_t dvb_ringbuffer_free (struct dvb_ringbuffer*) ;
 int dvb_ringbuffer_write (struct dvb_ringbuffer*,int const*,size_t) ;

__attribute__((used)) static int dvb_dmxdev_buffer_write(struct dvb_ringbuffer *buf,
       const u8 *src, size_t len)
{
 ssize_t free;

 if (!len)
  return 0;
 if (!buf->data)
  return 0;

 free = dvb_ringbuffer_free(buf);
 if (len > free) {
  dprintk("dmxdev: buffer overflow\n");
  return -EOVERFLOW;
 }

 return dvb_ringbuffer_write(buf, src, len);
}
