
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8350 {int (* read_dev ) (struct wm8350*,int,int,char*) ;int dev; } ;
struct TYPE_2__ {int readable; } ;


 int be16_to_cpu (int ) ;
 int dev_dbg (int ,char*) ;
 int dump (int,int *) ;
 int stub1 (struct wm8350*,int,int,char*) ;
 TYPE_1__* wm8350_reg_io_map ;

__attribute__((used)) static int wm8350_phys_read(struct wm8350 *wm8350, u8 reg, int num_regs,
       u16 *dest)
{
 int i, ret;
 int bytes = num_regs * 2;

 dev_dbg(wm8350->dev, "volatile read\n");
 ret = wm8350->read_dev(wm8350, reg, bytes, (char *)dest);

 for (i = reg; i < reg + num_regs; i++) {

  dest[i - reg] = be16_to_cpu(dest[i - reg]);


  dest[i - reg] &= wm8350_reg_io_map[i].readable;
 }

 dump(num_regs, dest);

 return ret;
}
