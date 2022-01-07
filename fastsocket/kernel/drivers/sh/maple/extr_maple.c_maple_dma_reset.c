
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAPLE_2MBPS ;
 int MAPLE_DMAADDR ;
 int MAPLE_ENABLE ;
 int MAPLE_MAGIC ;
 int MAPLE_RESET ;
 int MAPLE_SPEED ;
 int MAPLE_TIMEOUT (int) ;
 int MAPLE_TRIGTYPE ;
 int PHYSADDR (int ) ;
 int ctrl_outl (int,int ) ;
 int maple_sendbuf ;

__attribute__((used)) static void maple_dma_reset(void)
{
 ctrl_outl(MAPLE_MAGIC, MAPLE_RESET);

 ctrl_outl(1, MAPLE_TRIGTYPE);
 ctrl_outl(MAPLE_2MBPS | MAPLE_TIMEOUT(0xFFFF), MAPLE_SPEED);
 ctrl_outl(PHYSADDR(maple_sendbuf), MAPLE_DMAADDR);
 ctrl_outl(1, MAPLE_ENABLE);
}
