
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_cs_card {int dummy; } ;


 int IF_CS_HOST_INT_MASK ;
 int LBS_DEB_CS ;
 int if_cs_write16 (struct if_cs_card*,int ,int ) ;
 int lbs_deb_enter (int ) ;

__attribute__((used)) static inline void if_cs_enable_ints(struct if_cs_card *card)
{
 lbs_deb_enter(LBS_DEB_CS);
 if_cs_write16(card, IF_CS_HOST_INT_MASK, 0);
}
