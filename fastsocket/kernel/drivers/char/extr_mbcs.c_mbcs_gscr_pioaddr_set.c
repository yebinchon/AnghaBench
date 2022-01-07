
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbcs_soft {int gscr_addr; } ;


 int MBCS_GSCR_START ;
 int mbcs_pioaddr (struct mbcs_soft*,int ) ;

__attribute__((used)) static void mbcs_gscr_pioaddr_set(struct mbcs_soft *soft)
{
 soft->gscr_addr = mbcs_pioaddr(soft, MBCS_GSCR_START);
}
