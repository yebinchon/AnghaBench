
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MODE_SENSE_BLK_DESC_COUNT ;
 scalar_t__ MODE_SENSE_BLK_DESC_ENABLED ;

__attribute__((used)) static inline int nvme_trans_get_blk_desc_len(u8 dbd, u8 llbaa)
{
 if (dbd == MODE_SENSE_BLK_DESC_ENABLED) {

  return 8 * (llbaa + 1) * MODE_SENSE_BLK_DESC_COUNT;
 } else {
  return 0;
 }
}
