
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isdn_net_local ;


 int EBUSY ;
 scalar_t__ ISDN_NET_DIALMODE (int ) ;
 scalar_t__ ISDN_NET_DM_AUTO ;
 int isdn_net_force_dial_lp (int *) ;

int
isdn_net_dial_req(isdn_net_local * lp)
{

 if (!(ISDN_NET_DIALMODE(*lp) == ISDN_NET_DM_AUTO)) return -EBUSY;

 return isdn_net_force_dial_lp(lp);
}
