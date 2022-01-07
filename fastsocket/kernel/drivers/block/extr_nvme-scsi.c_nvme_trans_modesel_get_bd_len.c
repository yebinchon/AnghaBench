
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 size_t MODE_SELECT_10_BD_OFFSET ;
 scalar_t__ MODE_SELECT_10_LLBAA_MASK ;
 size_t MODE_SELECT_10_LLBAA_OFFSET ;
 size_t MODE_SELECT_6_BD_OFFSET ;

__attribute__((used)) static inline void nvme_trans_modesel_get_bd_len(u8 *parm_list, u8 cdb10,
      u16 *bd_len, u8 *llbaa)
{
 if (cdb10) {

  *bd_len = (parm_list[MODE_SELECT_10_BD_OFFSET] << 8) +
   parm_list[MODE_SELECT_10_BD_OFFSET + 1];
  *llbaa = parm_list[MODE_SELECT_10_LLBAA_OFFSET] &&
    MODE_SELECT_10_LLBAA_MASK;
 } else {

  *bd_len = parm_list[MODE_SELECT_6_BD_OFFSET];
 }
}
