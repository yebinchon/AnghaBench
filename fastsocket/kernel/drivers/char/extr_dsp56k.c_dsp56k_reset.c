
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int rd_data_reg_sel; int wd_data; } ;


 TYPE_1__ sound_ym ;
 int udelay (int) ;

__attribute__((used)) static int dsp56k_reset(void)
{
 u_char status;


 sound_ym.rd_data_reg_sel = 14;
 status = sound_ym.rd_data_reg_sel & 0xef;
 sound_ym.wd_data = status;
 sound_ym.wd_data = status | 0x10;

 udelay(10);


 sound_ym.rd_data_reg_sel = 14;
 sound_ym.wd_data = sound_ym.rd_data_reg_sel & 0xef;

 return 0;
}
