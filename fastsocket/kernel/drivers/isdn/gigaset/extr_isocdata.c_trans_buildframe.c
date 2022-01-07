
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isowbuf_t {int write; unsigned char* data; unsigned char idle; } ;


 int BAS_OUTBUFSIZE ;
 int DEBUG_ISO ;
 int DEBUG_STREAM ;
 int DEBUG_STREAM_DUMP ;
 int EAGAIN ;
 unsigned char bitrev8 (int ) ;
 int dump_bytes (int ,char*,unsigned char*,int) ;
 int gig_dbg (int ,char*,int) ;
 int isowbuf_donewrite (struct isowbuf_t*) ;
 int isowbuf_freebytes (struct isowbuf_t*) ;
 int isowbuf_startwrite (struct isowbuf_t*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int trans_buildframe(struct isowbuf_t *iwb,
       unsigned char *in, int count)
{
 int write;
 unsigned char c;

 if (unlikely(count <= 0))
  return iwb->write;

 if (isowbuf_freebytes(iwb) < count ||
     !isowbuf_startwrite(iwb)) {
  gig_dbg(DEBUG_ISO, "can't put %d bytes", count);
  return -EAGAIN;
 }

 gig_dbg(DEBUG_STREAM, "put %d bytes", count);
 dump_bytes(DEBUG_STREAM_DUMP, "snd data", in, count);

 write = iwb->write;
 do {
  c = bitrev8(*in++);
  iwb->data[write++] = c;
  write %= BAS_OUTBUFSIZE;
 } while (--count > 0);
 iwb->write = write;
 iwb->idle = c;

 return isowbuf_donewrite(iwb);
}
