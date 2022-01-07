
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct de_private {int dummy; } ;


 int DE_NUM_REGS ;
 int de_rx_missed (struct de_private*,int ) ;
 int dr32 (int) ;

__attribute__((used)) static void __de_get_regs(struct de_private *de, u8 *buf)
{
 int i;
 u32 *rbuf = (u32 *)buf;


 for (i = 0; i < DE_NUM_REGS; i++)
  rbuf[i] = dr32(i * 8);


 de_rx_missed(de, rbuf[8]);
}
