
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int queue; } ;
struct av7110 {int * ipack; TYPE_1__ avout; int * kbuf; } ;
typedef unsigned long ssize_t ;


 unsigned long ENOBUFS ;
 unsigned long EWOULDBLOCK ;
 int FREE_COND ;
 int IPACKS ;
 int av7110_ipack_instant_repack (int const*,unsigned long,int *) ;
 int dprintk (int,char*,struct av7110*) ;
 scalar_t__ wait_event_interruptible (int ,int ) ;

__attribute__((used)) static ssize_t dvb_play_kernel(struct av7110 *av7110, const u8 *buf,
   unsigned long count, int nonblock, int type)
{
 unsigned long todo = count, n;
 dprintk(2, "av7110:%p, \n", av7110);

 if (!av7110->kbuf[type])
  return -ENOBUFS;

 if (nonblock && !FREE_COND)
  return -EWOULDBLOCK;

 while (todo > 0) {
  if (!FREE_COND) {
   if (nonblock)
    return count - todo;
   if (wait_event_interruptible(av7110->avout.queue,
           FREE_COND))
    return count - todo;
  }
  n = todo;
  if (n > IPACKS * 2)
   n = IPACKS * 2;
  av7110_ipack_instant_repack(buf, n, &av7110->ipack[type]);
  todo -= n;
  buf += n;
 }
 return count - todo;
}
