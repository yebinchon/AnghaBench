
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux {int lock; } ;


 int dvb_dmx_swfilter_packet (struct dvb_demux*,int const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dvb_dmx_swfilter_packets(struct dvb_demux *demux, const u8 *buf,
         size_t count)
{
 spin_lock(&demux->lock);

 while (count--) {
  if (buf[0] == 0x47)
   dvb_dmx_swfilter_packet(demux, buf);
  buf += 188;
 }

 spin_unlock(&demux->lock);
}
