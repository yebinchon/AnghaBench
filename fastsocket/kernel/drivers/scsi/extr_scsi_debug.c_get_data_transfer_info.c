
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
__attribute__((used)) static void get_data_transfer_info(unsigned char *cmd,
       unsigned long long *lba, unsigned int *num,
       u32 *ei_lba)
{
 *ei_lba = 0;

 switch (*cmd) {
 case 135:
  *lba = (u64)cmd[19] | (u64)cmd[18] << 8 |
   (u64)cmd[17] << 16 | (u64)cmd[16] << 24 |
   (u64)cmd[15] << 32 | (u64)cmd[14] << 40 |
   (u64)cmd[13] << 48 | (u64)cmd[12] << 56;

  *ei_lba = (u32)cmd[23] | (u32)cmd[22] << 8 |
   (u32)cmd[21] << 16 | (u32)cmd[20] << 24;

  *num = (u32)cmd[31] | (u32)cmd[30] << 8 | (u32)cmd[29] << 16 |
   (u32)cmd[28] << 24;
  break;

 case 129:
 case 132:
 case 137:
  *lba = (u64)cmd[9] | (u64)cmd[8] << 8 |
   (u64)cmd[7] << 16 | (u64)cmd[6] << 24 |
   (u64)cmd[5] << 32 | (u64)cmd[4] << 40 |
   (u64)cmd[3] << 48 | (u64)cmd[2] << 56;

  *num = (u32)cmd[13] | (u32)cmd[12] << 8 | (u32)cmd[11] << 16 |
   (u32)cmd[10] << 24;
  break;
 case 133:
 case 138:
  *lba = (u32)cmd[5] | (u32)cmd[4] << 8 | (u32)cmd[3] << 16 |
   (u32)cmd[2] << 24;

  *num = (u32)cmd[9] | (u32)cmd[8] << 8 | (u32)cmd[7] << 16 |
   (u32)cmd[6] << 24;
  break;
 case 130:
 case 134:
 case 139:
 case 128:
  *lba = (u32)cmd[5] | (u32)cmd[4] << 8 | (u32)cmd[3] << 16 |
   (u32)cmd[2] << 24;

  *num = (u32)cmd[8] | (u32)cmd[7] << 8;
  break;
 case 131:
 case 136:
  *lba = (u32)cmd[3] | (u32)cmd[2] << 8 |
   (u32)(cmd[1] & 0x1f) << 16;
  *num = (0 == cmd[4]) ? 256 : cmd[4];
  break;
 default:
  break;
 }
}
