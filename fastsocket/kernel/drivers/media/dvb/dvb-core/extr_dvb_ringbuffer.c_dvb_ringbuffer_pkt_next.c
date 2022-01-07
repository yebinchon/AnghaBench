
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {size_t pread; int* data; size_t size; } ;
typedef size_t ssize_t ;


 size_t DVB_RINGBUFFER_PKTHDRSIZE ;
 int PKT_READY ;
 int dvb_ringbuffer_avail (struct dvb_ringbuffer*) ;

ssize_t dvb_ringbuffer_pkt_next(struct dvb_ringbuffer *rbuf, size_t idx, size_t* pktlen)
{
 int consumed;
 int curpktlen;
 int curpktstatus;

 if (idx == -1) {
        idx = rbuf->pread;
 } else {
  curpktlen = rbuf->data[idx] << 8;
  curpktlen |= rbuf->data[(idx + 1) % rbuf->size];
  idx = (idx + curpktlen + DVB_RINGBUFFER_PKTHDRSIZE) % rbuf->size;
 }

 consumed = (idx - rbuf->pread) % rbuf->size;

 while((dvb_ringbuffer_avail(rbuf) - consumed) > DVB_RINGBUFFER_PKTHDRSIZE) {

  curpktlen = rbuf->data[idx] << 8;
  curpktlen |= rbuf->data[(idx + 1) % rbuf->size];
  curpktstatus = rbuf->data[(idx + 2) % rbuf->size];

  if (curpktstatus == PKT_READY) {
   *pktlen = curpktlen;
   return idx;
  }

  consumed += curpktlen + DVB_RINGBUFFER_PKTHDRSIZE;
  idx = (idx + curpktlen + DVB_RINGBUFFER_PKTHDRSIZE) % rbuf->size;
 }


 return -1;
}
