
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int dummy; } ;


 int MacMode ;
 int RxTx ;
 int dr32 (int ) ;
 int dw32 (int ,int) ;

__attribute__((used)) static inline void de_start_rxtx (struct de_private *de)
{
 u32 macmode;

 macmode = dr32(MacMode);
 if ((macmode & RxTx) != RxTx) {
  dw32(MacMode, macmode | RxTx);
  dr32(MacMode);
 }
}
