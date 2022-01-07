
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar9170 {TYPE_1__* edcf; } ;
struct TYPE_2__ {int cw_min; int cw_max; int aifs; int txop; } ;


 int AR9170_MAC_REG_AC0_CW ;
 int AR9170_MAC_REG_AC1_AC0_TXOP ;
 int AR9170_MAC_REG_AC1_CW ;
 int AR9170_MAC_REG_AC2_AC1_AC0_AIFS ;
 int AR9170_MAC_REG_AC2_CW ;
 int AR9170_MAC_REG_AC3_AC2_TXOP ;
 int AR9170_MAC_REG_AC3_CW ;
 int AR9170_MAC_REG_AC4_AC3_AC2_AIFS ;
 int AR9170_MAC_REG_AC4_CW ;
 int carl9170_regwrite (int ,int) ;
 int carl9170_regwrite_begin (struct ar9170*) ;
 int carl9170_regwrite_finish () ;
 int carl9170_regwrite_result () ;

int carl9170_set_qos(struct ar9170 *ar)
{
 carl9170_regwrite_begin(ar);

 carl9170_regwrite(AR9170_MAC_REG_AC0_CW, ar->edcf[0].cw_min |
     (ar->edcf[0].cw_max << 16));
 carl9170_regwrite(AR9170_MAC_REG_AC1_CW, ar->edcf[1].cw_min |
     (ar->edcf[1].cw_max << 16));
 carl9170_regwrite(AR9170_MAC_REG_AC2_CW, ar->edcf[2].cw_min |
     (ar->edcf[2].cw_max << 16));
 carl9170_regwrite(AR9170_MAC_REG_AC3_CW, ar->edcf[3].cw_min |
     (ar->edcf[3].cw_max << 16));
 carl9170_regwrite(AR9170_MAC_REG_AC4_CW, ar->edcf[4].cw_min |
     (ar->edcf[4].cw_max << 16));

 carl9170_regwrite(AR9170_MAC_REG_AC2_AC1_AC0_AIFS,
     ((ar->edcf[0].aifs * 9 + 10)) |
     ((ar->edcf[1].aifs * 9 + 10) << 12) |
     ((ar->edcf[2].aifs * 9 + 10) << 24));
 carl9170_regwrite(AR9170_MAC_REG_AC4_AC3_AC2_AIFS,
     ((ar->edcf[2].aifs * 9 + 10) >> 8) |
     ((ar->edcf[3].aifs * 9 + 10) << 4) |
     ((ar->edcf[4].aifs * 9 + 10) << 16));

 carl9170_regwrite(AR9170_MAC_REG_AC1_AC0_TXOP,
     ar->edcf[0].txop | ar->edcf[1].txop << 16);
 carl9170_regwrite(AR9170_MAC_REG_AC3_AC2_TXOP,
     ar->edcf[2].txop | ar->edcf[3].txop << 16 |
     ar->edcf[4].txop << 24);

 carl9170_regwrite_finish();

 return carl9170_regwrite_result();
}
