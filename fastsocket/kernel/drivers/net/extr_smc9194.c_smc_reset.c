
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONTROL ;
 int CTL_AUTO_RELEASE ;
 scalar_t__ INT_MASK ;
 int MC_RESET ;
 scalar_t__ MMU_CMD ;
 scalar_t__ RCR ;
 int RCR_CLEAR ;
 int RCR_SOFTRESET ;
 int SMC_DELAY () ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_CLEAR ;
 int inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void smc_reset( int ioaddr )
{


 SMC_SELECT_BANK( 0 );
 outw( RCR_SOFTRESET, ioaddr + RCR );


 SMC_DELAY( );



 outw( RCR_CLEAR, ioaddr + RCR );
 outw( TCR_CLEAR, ioaddr + TCR );




 SMC_SELECT_BANK( 1 );
 outw( inw( ioaddr + CONTROL ) | CTL_AUTO_RELEASE , ioaddr + CONTROL );


 SMC_SELECT_BANK( 2 );
 outw( MC_RESET, ioaddr + MMU_CMD );





 outb( 0, ioaddr + INT_MASK );
}
