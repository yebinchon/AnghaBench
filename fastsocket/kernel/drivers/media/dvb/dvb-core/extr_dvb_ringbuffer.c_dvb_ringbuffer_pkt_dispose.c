
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ringbuffer {size_t* data; size_t size; } ;


 size_t DVB_RINGBUFFER_PEEK (struct dvb_ringbuffer*,int) ;
 scalar_t__ DVB_RINGBUFFER_PKTHDRSIZE ;
 int DVB_RINGBUFFER_SKIP (struct dvb_ringbuffer*,scalar_t__) ;
 size_t PKT_DISPOSED ;
 scalar_t__ dvb_ringbuffer_avail (struct dvb_ringbuffer*) ;

void dvb_ringbuffer_pkt_dispose(struct dvb_ringbuffer *rbuf, size_t idx)
{
 size_t pktlen;

 rbuf->data[(idx + 2) % rbuf->size] = PKT_DISPOSED;


 while(dvb_ringbuffer_avail(rbuf) > DVB_RINGBUFFER_PKTHDRSIZE) {
  if (DVB_RINGBUFFER_PEEK(rbuf, 2) == PKT_DISPOSED) {
   pktlen = DVB_RINGBUFFER_PEEK(rbuf, 0) << 8;
   pktlen |= DVB_RINGBUFFER_PEEK(rbuf, 1);
   DVB_RINGBUFFER_SKIP(rbuf, pktlen + DVB_RINGBUFFER_PKTHDRSIZE);
  } else {

   break;
  }
 }
}
