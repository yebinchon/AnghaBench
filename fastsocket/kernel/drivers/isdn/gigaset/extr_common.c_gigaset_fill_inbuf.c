
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inbuf_t {unsigned int tail; unsigned int head; scalar_t__ data; TYPE_1__* cs; } ;
struct TYPE_2__ {int dev; } ;


 int DEBUG_INTR ;
 int RBUFSIZE ;
 int dev_err (int ,char*,unsigned int) ;
 int gig_dbg (int ,char*,unsigned int,...) ;
 int memcpy (scalar_t__,unsigned char const*,unsigned int) ;

int gigaset_fill_inbuf(struct inbuf_t *inbuf, const unsigned char *src,
         unsigned numbytes)
{
 unsigned n, head, tail, bytesleft;

 gig_dbg(DEBUG_INTR, "received %u bytes", numbytes);

 if (!numbytes)
  return 0;

 bytesleft = numbytes;
 tail = inbuf->tail;
 head = inbuf->head;
 gig_dbg(DEBUG_INTR, "buffer state: %u -> %u", head, tail);

 while (bytesleft) {
  if (head > tail)
   n = head - 1 - tail;
  else if (head == 0)
   n = (RBUFSIZE-1) - tail;
  else
   n = RBUFSIZE - tail;
  if (!n) {
   dev_err(inbuf->cs->dev,
    "buffer overflow (%u bytes lost)\n",
    bytesleft);
   break;
  }
  if (n > bytesleft)
   n = bytesleft;
  memcpy(inbuf->data + tail, src, n);
  bytesleft -= n;
  tail = (tail + n) % RBUFSIZE;
  src += n;
 }
 gig_dbg(DEBUG_INTR, "setting tail to %u", tail);
 inbuf->tail = tail;
 return numbytes != bytesleft;
}
