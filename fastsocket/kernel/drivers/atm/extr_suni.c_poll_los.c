
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int signal; } ;


 int ATM_PHY_SIG_FOUND ;
 int ATM_PHY_SIG_LOST ;
 int GET (int ) ;
 int RSOP_SIS ;
 int SUNI_RSOP_SIS_LOSV ;

__attribute__((used)) static void poll_los(struct atm_dev *dev)
{
 dev->signal = GET(RSOP_SIS) & SUNI_RSOP_SIS_LOSV ? ATM_PHY_SIG_LOST :
   ATM_PHY_SIG_FOUND;
}
