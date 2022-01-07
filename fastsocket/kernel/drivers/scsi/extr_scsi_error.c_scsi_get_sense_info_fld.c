
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int* scsi_sense_desc_find (int const*,int,int ) ;

int scsi_get_sense_info_fld(const u8 * sense_buffer, int sb_len,
       u64 * info_out)
{
 int j;
 const u8 * ucp;
 u64 ull;

 if (sb_len < 7)
  return 0;
 switch (sense_buffer[0] & 0x7f) {
 case 0x70:
 case 0x71:
  if (sense_buffer[0] & 0x80) {
   *info_out = (sense_buffer[3] << 24) +
        (sense_buffer[4] << 16) +
        (sense_buffer[5] << 8) + sense_buffer[6];
   return 1;
  } else
   return 0;
 case 0x72:
 case 0x73:
  ucp = scsi_sense_desc_find(sense_buffer, sb_len,
        0 );
  if (ucp && (0xa == ucp[1])) {
   ull = 0;
   for (j = 0; j < 8; ++j) {
    if (j > 0)
     ull <<= 8;
    ull |= ucp[4 + j];
   }
   *info_out = ull;
   return 1;
  } else
   return 0;
 default:
  return 0;
 }
}
