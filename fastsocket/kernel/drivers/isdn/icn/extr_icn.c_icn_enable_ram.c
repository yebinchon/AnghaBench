
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int icn_card ;


 int ICN_MAPRAM ;
 int OUTB_P (int,int ) ;

__attribute__((used)) static inline void
icn_enable_ram(icn_card * card)
{
 OUTB_P(0xff, ICN_MAPRAM);
}
