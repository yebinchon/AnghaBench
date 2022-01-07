
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct zoltrix {unsigned int stereo; unsigned long curfreq; int curvol; scalar_t__ muted; int lock; scalar_t__ io; struct v4l2_device v4l2_dev; } ;


 int EINVAL ;
 int inb (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,scalar_t__) ;
 int udelay (int) ;
 int v4l2_warn (struct v4l2_device*,char*) ;
 int zol_setvol (struct zoltrix*,int ) ;

__attribute__((used)) static int zol_setfreq(struct zoltrix *zol, unsigned long freq)
{

 struct v4l2_device *v4l2_dev = &zol->v4l2_dev;
 unsigned long long bitmask, f, m;
 unsigned int stereo = zol->stereo;
 int i;

 if (freq == 0) {
  v4l2_warn(v4l2_dev, "cannot set a frequency of 0.\n");
  return -EINVAL;
 }

 m = (freq / 160 - 8800) * 2;
 f = (unsigned long long)m + 0x4d1c;

 bitmask = 0xc480402c10080000ull;
 i = 45;

 mutex_lock(&zol->lock);

 zol->curfreq = freq;

 outb(0, zol->io);
 outb(0, zol->io);
 inb(zol->io + 3);

 outb(0x40, zol->io);
 outb(0xc0, zol->io);

 bitmask = (bitmask ^ ((f & 0xff) << 47) ^ ((f & 0xff00) << 30) ^ (stereo << 31));
 while (i--) {
  if ((bitmask & 0x8000000000000000ull) != 0) {
   outb(0x80, zol->io);
   udelay(50);
   outb(0x00, zol->io);
   udelay(50);
   outb(0x80, zol->io);
   udelay(50);
  } else {
   outb(0xc0, zol->io);
   udelay(50);
   outb(0x40, zol->io);
   udelay(50);
   outb(0xc0, zol->io);
   udelay(50);
  }
  bitmask *= 2;
 }

 outb(0x80, zol->io);
 outb(0xc0, zol->io);
 outb(0x40, zol->io);
 udelay(1000);
 inb(zol->io + 2);

 udelay(1000);

 if (zol->muted) {
  outb(0, zol->io);
  outb(0, zol->io);
  inb(zol->io + 3);
  udelay(1000);
 }

 mutex_unlock(&zol->lock);

 if (!zol->muted)
  zol_setvol(zol, zol->curvol);
 return 0;
}
