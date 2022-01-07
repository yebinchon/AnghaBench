
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_demux {int tsbufp; int* tsbuf; int lock; } ;


 int dvb_dmx_swfilter_packet (struct dvb_demux*,int*) ;
 int memcpy (int*,int const*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dvb_dmx_swfilter_204(struct dvb_demux *demux, const u8 *buf, size_t count)
{
 int p = 0, i, j;
 u8 tmppack[188];

 spin_lock(&demux->lock);

 if (demux->tsbufp) {
  i = demux->tsbufp;
  j = 204 - i;
  if (count < j) {
   memcpy(&demux->tsbuf[i], buf, count);
   demux->tsbufp += count;
   goto bailout;
  }
  memcpy(&demux->tsbuf[i], buf, j);
  if ((demux->tsbuf[0] == 0x47) || (demux->tsbuf[0] == 0xB8)) {
   memcpy(tmppack, demux->tsbuf, 188);
   if (tmppack[0] == 0xB8)
    tmppack[0] = 0x47;
   dvb_dmx_swfilter_packet(demux, tmppack);
  }
  demux->tsbufp = 0;
  p += j;
 }

 while (p < count) {
  if ((buf[p] == 0x47) || (buf[p] == 0xB8)) {
   if (count - p >= 204) {
    memcpy(tmppack, &buf[p], 188);
    if (tmppack[0] == 0xB8)
     tmppack[0] = 0x47;
    dvb_dmx_swfilter_packet(demux, tmppack);
    p += 204;
   } else {
    i = count - p;
    memcpy(demux->tsbuf, &buf[p], i);
    demux->tsbufp = i;
    goto bailout;
   }
  } else {
   p++;
  }
 }

bailout:
 spin_unlock(&demux->lock);
}
