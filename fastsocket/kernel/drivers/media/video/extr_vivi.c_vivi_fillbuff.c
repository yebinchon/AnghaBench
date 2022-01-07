
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vivi_fh {struct vivi_dev* dev; } ;
struct vivi_dev {int ms; int s; int m; int h; int timestr; scalar_t__ jiffies; int mv_count; } ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int height; int width; int state; struct timeval ts; int field_count; } ;
struct vivi_buffer {TYPE_1__ vb; } ;


 int GFP_ATOMIC ;
 int VIDEOBUF_DONE ;
 int do_gettimeofday (struct timeval*) ;
 int dprintk (struct vivi_dev*,int,char*,int ,unsigned long,int) ;
 int gen_line (struct vivi_fh*,char*,int ,int,int,int,int ,int ) ;
 scalar_t__ jiffies ;
 scalar_t__ jiffies_to_msecs (scalar_t__) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (void*,char*,int) ;
 int sprintf (int ,char*,int,int,int,int) ;
 void* videobuf_to_vmalloc (TYPE_1__*) ;

__attribute__((used)) static void vivi_fillbuff(struct vivi_fh *fh, struct vivi_buffer *buf)
{
 struct vivi_dev *dev = fh->dev;
 int h , pos = 0;
 int hmax = buf->vb.height;
 int wmax = buf->vb.width;
 struct timeval ts;
 char *tmpbuf;
 void *vbuf = videobuf_to_vmalloc(&buf->vb);

 if (!vbuf)
  return;

 tmpbuf = kmalloc(wmax * 2, GFP_ATOMIC);
 if (!tmpbuf)
  return;

 for (h = 0; h < hmax; h++) {
  gen_line(fh, tmpbuf, 0, wmax, hmax, h, dev->mv_count,
    dev->timestr);
  memcpy(vbuf + pos, tmpbuf, wmax * 2);
  pos += wmax*2;
 }

 dev->mv_count++;

 kfree(tmpbuf);



 dev->ms += jiffies_to_msecs(jiffies-dev->jiffies);
 dev->jiffies = jiffies;
 if (dev->ms >= 1000) {
  dev->ms -= 1000;
  dev->s++;
  if (dev->s >= 60) {
   dev->s -= 60;
   dev->m++;
   if (dev->m > 60) {
    dev->m -= 60;
    dev->h++;
    if (dev->h > 24)
     dev->h -= 24;
   }
  }
 }
 sprintf(dev->timestr, "%02d:%02d:%02d:%03d",
   dev->h, dev->m, dev->s, dev->ms);

 dprintk(dev, 2, "vivifill at %s: Buffer 0x%08lx size= %d\n",
   dev->timestr, (unsigned long)tmpbuf, pos);


 buf->vb.field_count++;
 do_gettimeofday(&ts);
 buf->vb.ts = ts;
 buf->vb.state = VIDEOBUF_DONE;
}
