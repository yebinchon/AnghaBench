
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ io; } ;
typedef TYPE_1__ card_t ;


 scalar_t__ N2_PSR ;
 int PSR_PAGEBITS ;
 int inb (scalar_t__) ;

__attribute__((used)) static __inline__ u8 sca_get_page(card_t *card)
{
 return inb(card->io + N2_PSR) & PSR_PAGEBITS;
}
