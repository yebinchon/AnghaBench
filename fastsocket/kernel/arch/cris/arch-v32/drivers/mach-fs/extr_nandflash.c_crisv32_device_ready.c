
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_info {int dummy; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ reg_gio_r_pa_din ;


 int BY_BIT ;
 TYPE_1__ REG_RD (int ,int ,int ) ;
 int gio ;
 int r_pa_din ;
 int regi_gio ;

__attribute__((used)) static int crisv32_device_ready(struct mtd_info *mtd)
{
 reg_gio_r_pa_din din = REG_RD(gio, regi_gio, r_pa_din);
 return ((din.data & (1 << BY_BIT)) >> BY_BIT);
}
