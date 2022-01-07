
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wm831x {int (* read_dev ) (struct wm831x*,unsigned short,int,void*) ;int dev; } ;


 int BUG_ON (int) ;
 int be16_to_cpu (int ) ;
 int dev_vdbg (int ,char*,int ,unsigned short,unsigned short) ;
 int stub1 (struct wm831x*,unsigned short,int,void*) ;

__attribute__((used)) static int wm831x_read(struct wm831x *wm831x, unsigned short reg,
         int bytes, void *dest)
{
 int ret, i;
 u16 *buf = dest;

 BUG_ON(bytes % 2);
 BUG_ON(bytes <= 0);

 ret = wm831x->read_dev(wm831x, reg, bytes, dest);
 if (ret < 0)
  return ret;

 for (i = 0; i < bytes / 2; i++) {
  buf[i] = be16_to_cpu(buf[i]);

  dev_vdbg(wm831x->dev, "Read %04x from R%d(0x%x)\n",
    buf[i], reg + i, reg + i);
 }

 return 0;
}
