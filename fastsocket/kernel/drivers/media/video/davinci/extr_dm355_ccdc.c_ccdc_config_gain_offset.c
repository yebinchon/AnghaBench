
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_mg; int gb_g; int gr_cy; int r_ye; } ;
struct TYPE_4__ {int ccdc_offset; TYPE_1__ gain; } ;


 int BMGGAIN ;
 int GBGGAIN ;
 int GRCYGAIN ;
 int OFFSET ;
 int RYEGAIN ;
 TYPE_2__ ccdc_hw_params_raw ;
 int regw (int ,int ) ;

__attribute__((used)) static void ccdc_config_gain_offset(void)
{

 regw(ccdc_hw_params_raw.gain.r_ye, RYEGAIN);
 regw(ccdc_hw_params_raw.gain.gr_cy, GRCYGAIN);
 regw(ccdc_hw_params_raw.gain.gb_g, GBGGAIN);
 regw(ccdc_hw_params_raw.gain.b_mg, BMGGAIN);

 regw(ccdc_hw_params_raw.ccdc_offset, OFFSET);
}
