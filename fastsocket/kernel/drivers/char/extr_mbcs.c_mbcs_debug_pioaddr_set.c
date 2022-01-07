
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbcs_soft {int debug_addr; } ;


 int MBCS_DEBUG_START ;
 int mbcs_pioaddr (struct mbcs_soft*,int ) ;

__attribute__((used)) static void mbcs_debug_pioaddr_set(struct mbcs_soft *soft)
{
 soft->debug_addr = mbcs_pioaddr(soft, MBCS_DEBUG_START);
}
