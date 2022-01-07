
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (int const*) ;
 size_t CMD_STAT_OK ;
__attribute__((used)) static int mlx4_status_to_errno(u8 status)
{
 static const int trans_table[] = {
  [143] = -132,
  [154] = -128,
  [153] = -133,
  [146] = -129,
  [150] = -136,
  [139] = -135,
  [145] = -130,
  [149] = -136,
  [156] = -136,
  [155] = -134,
  [144] = -131,
  [151] = -133,
  [148] = -134,
  [140] = -135,
  [142] = -137,
  [152] = -133,
  [147] = -130,
  [141] = -138,
 };

 if (status >= ARRAY_SIZE(trans_table) ||
     (status != CMD_STAT_OK && trans_table[status] == 0))
  return -132;

 return trans_table[status];
}
