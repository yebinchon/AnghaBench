
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int (* write_dev ) (struct wm831x*,unsigned short,int,void*) ;int dev; } ;


 int BUG_ON (int) ;
 int EPERM ;
 int cpu_to_be16 (int ) ;
 int dev_vdbg (int ,char*,int ,unsigned short,unsigned short) ;
 int stub1 (struct wm831x*,unsigned short,int,void*) ;
 scalar_t__ wm831x_reg_locked (struct wm831x*,unsigned short) ;

__attribute__((used)) static int wm831x_write(struct wm831x *wm831x, unsigned short reg,
   int bytes, void *src)
{
 u16 *buf = src;
 int i;

 BUG_ON(bytes % 2);
 BUG_ON(bytes <= 0);

 for (i = 0; i < bytes / 2; i++) {
  if (wm831x_reg_locked(wm831x, reg))
   return -EPERM;

  dev_vdbg(wm831x->dev, "Write %04x to R%d(0x%x)\n",
    buf[i], reg + i, reg + i);

  buf[i] = cpu_to_be16(buf[i]);
 }

 return wm831x->write_dev(wm831x, reg, bytes, src);
}
