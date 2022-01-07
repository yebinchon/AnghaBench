
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8400 {int (* write_dev ) (int ,int,int,int *) ;int io_data; int * reg_cache; } ;
struct TYPE_2__ {int writable; } ;


 int ARRAY_SIZE (int *) ;
 int BUG_ON (int) ;
 int EIO ;
 int cpu_to_be16 (int ) ;
 TYPE_1__* reg_data ;
 int stub1 (int ,int,int,int *) ;

__attribute__((used)) static int wm8400_write(struct wm8400 *wm8400, u8 reg, int num_regs,
   u16 *src)
{
 int ret, i;

 BUG_ON(reg + num_regs - 1 > ARRAY_SIZE(wm8400->reg_cache));

 for (i = 0; i < num_regs; i++) {
  BUG_ON(!reg_data[reg + i].writable);
  wm8400->reg_cache[reg + i] = src[i];
  src[i] = cpu_to_be16(src[i]);
 }


 ret = wm8400->write_dev(wm8400->io_data, reg, num_regs, src);
 if (ret != 0)
  return -EIO;

 return 0;
}
