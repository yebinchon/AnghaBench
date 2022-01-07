
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wwn_t ;
typedef int u8 ;
typedef int u16 ;
struct bfa_fcs_fabric_s {TYPE_1__* lps; } ;
struct TYPE_2__ {int pr_nwwn; } ;



u16
bfa_fcs_fabric_get_switch_oui(struct bfa_fcs_fabric_s *fabric)
{
 wwn_t fab_nwwn;
 u8 *tmp;
 u16 oui;

 fab_nwwn = fabric->lps->pr_nwwn;

 tmp = (u8 *)&fab_nwwn;
 oui = (tmp[3] << 8) | tmp[4];

 return oui;
}
