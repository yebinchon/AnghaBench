
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;} ;
struct TYPE_5__ {int ctrl_usb_wan; int ctrl_sramdma; int ctrl_maximumfill; } ;
struct TYPE_6__ {TYPE_1__ sram_dest_reg_714; } ;
typedef TYPE_2__ flexcop_ibi_value ;


 int sram_dest_reg_714 ;
 TYPE_2__ stub1 (struct flexcop_device*,int ) ;
 int stub2 (struct flexcop_device*,int ,TYPE_2__) ;

void flexcop_sram_ctrl(struct flexcop_device *fc, int usb_wan, int sramdma, int maximumfill)
{
 flexcop_ibi_value v = fc->read_ibi_reg(fc,sram_dest_reg_714);
 v.sram_dest_reg_714.ctrl_usb_wan = usb_wan;
 v.sram_dest_reg_714.ctrl_sramdma = sramdma;
 v.sram_dest_reg_714.ctrl_maximumfill = maximumfill;
 fc->write_ibi_reg(fc,sram_dest_reg_714,v);
}
