
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int RESERVED_FIELD ;
 int SNTI_INTERNAL_ERROR ;
 int SNTI_TRANSLATION_SUCCESS ;

__attribute__((used)) static int nvme_trans_fill_mode_parm_hdr(u8 *resp, int len, u8 cdb10, u8 llbaa,
     u16 mode_data_length, u16 blk_desc_len)
{

 if ((cdb10 && len < 8) || (!cdb10 && len < 4))
  return SNTI_INTERNAL_ERROR;

 if (cdb10) {
  resp[0] = (mode_data_length & 0xFF00) >> 8;
  resp[1] = (mode_data_length & 0x00FF);

  resp[4] = llbaa;
  resp[5] = RESERVED_FIELD;
  resp[6] = (blk_desc_len & 0xFF00) >> 8;
  resp[7] = (blk_desc_len & 0x00FF);
 } else {
  resp[0] = (mode_data_length & 0x00FF);

  resp[3] = (blk_desc_len & 0x00FF);
 }

 return SNTI_TRANSLATION_SUCCESS;
}
