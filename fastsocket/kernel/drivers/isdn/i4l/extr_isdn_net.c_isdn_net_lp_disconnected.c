
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isdn_net_local ;


 int isdn_net_rm_from_bundle (int *) ;

__attribute__((used)) static void isdn_net_lp_disconnected(isdn_net_local *lp)
{
 isdn_net_rm_from_bundle(lp);
}
