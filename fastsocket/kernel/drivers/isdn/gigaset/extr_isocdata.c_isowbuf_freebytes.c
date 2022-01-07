
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isowbuf_t {int read; int write; } ;


 int BAS_OUTBUFPAD ;
 int BAS_OUTBUFSIZE ;

__attribute__((used)) static inline int isowbuf_freebytes(struct isowbuf_t *iwb)
{
 int read, write, freebytes;

 read = iwb->read;
 write = iwb->write;
 if ((freebytes = read - write) > 0) {

  return freebytes - BAS_OUTBUFPAD;
 } else if (read < BAS_OUTBUFPAD) {

  return BAS_OUTBUFSIZE - write;
 } else {

  return freebytes + BAS_OUTBUFSIZE - BAS_OUTBUFPAD;
 }
}
