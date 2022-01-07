
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int dummy; } ;


 int RxMissed ;
 int de_rx_missed (struct de_private*,int ) ;
 int dr32 (int ) ;

__attribute__((used)) static void __de_get_stats(struct de_private *de)
{
 u32 tmp = dr32(RxMissed);

 de_rx_missed(de, tmp);
}
