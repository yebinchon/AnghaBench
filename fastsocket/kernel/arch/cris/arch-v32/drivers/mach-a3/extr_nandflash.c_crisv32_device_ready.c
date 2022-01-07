
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_3__ {int rdy; } ;
typedef TYPE_1__ reg_pio_r_din ;


 TYPE_1__ REG_RD (int ,int ,int ) ;
 int pio ;
 int r_din ;
 int regi_pio ;

__attribute__((used)) static int crisv32_device_ready(struct mtd_info *mtd)
{
 reg_pio_r_din din = REG_RD(pio, regi_pio, r_din);
 return din.rdy;
}
