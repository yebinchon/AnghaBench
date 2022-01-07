
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spider_net_card {int dummy; } ;


 int SPIDER_NET_BURSTLMT_VALUE ;
 int SPIDER_NET_ECMODE ;
 int SPIDER_NET_ECMODE_VALUE ;
 int SPIDER_NET_FRAMENUM_VALUE ;
 int SPIDER_NET_GDTBSTA ;
 int SPIDER_NET_GDTDMACCNTR ;
 int SPIDER_NET_GFAFRMNUM ;
 int SPIDER_NET_GFBFRMNUM ;
 int SPIDER_NET_GFCFRMNUM ;
 int SPIDER_NET_GFDFRMNUM ;
 int SPIDER_NET_GFFRMNUM ;
 int SPIDER_NET_GFREECNNUM ;
 int SPIDER_NET_GFTRESTRT ;
 int SPIDER_NET_GFXFRAMES_VALUE ;
 int SPIDER_NET_GIPSECINIT ;
 int SPIDER_NET_GMACAPAUSE ;
 int SPIDER_NET_GMACBSTLMT ;
 int SPIDER_NET_GMACINTEN ;
 int SPIDER_NET_GMACLENLMT ;
 int SPIDER_NET_GMACOPEMD ;
 int SPIDER_NET_GMACTXPAUSE ;
 int SPIDER_NET_GMRUA0FIL15R ;
 int SPIDER_NET_GMRUAFILnR ;
 int SPIDER_NET_GMRWOLCTRL ;
 int SPIDER_NET_GONETIMENUM ;
 int SPIDER_NET_GREINTNUM ;
 int SPIDER_NET_GRESUMINTNUM ;
 int SPIDER_NET_GRXDMAEN ;
 int SPIDER_NET_GRXMDSET ;
 int SPIDER_NET_GTESTMD ;
 int SPIDER_NET_GTOUTFRMNUM ;
 int SPIDER_NET_GTTQMSK ;
 int SPIDER_NET_GTXMDSET ;
 int SPIDER_NET_IPSECINIT_VALUE ;
 int SPIDER_NET_LENLMT_VALUE ;
 int SPIDER_NET_MACAPAUSE_VALUE ;
 int SPIDER_NET_OPMODE_VALUE ;
 int SPIDER_NET_RESTART_VALUE ;
 int SPIDER_NET_RXMODE_VALUE ;
 int SPIDER_NET_TXMODE_VALUE ;
 int SPIDER_NET_TXPAUSE_VALUE ;
 int SPIDER_NET_WOL_VALUE ;
 int spider_net_enable_rxchtails (struct spider_net_card*) ;
 int spider_net_enable_rxdmac (struct spider_net_card*) ;
 int spider_net_write_reg (struct spider_net_card*,int,int) ;

__attribute__((used)) static void
spider_net_enable_card(struct spider_net_card *card)
{
 int i;


 u32 regs[][2] = {
  { SPIDER_NET_GRESUMINTNUM, 0 },
  { SPIDER_NET_GREINTNUM, 0 },



  { SPIDER_NET_GFAFRMNUM, SPIDER_NET_GFXFRAMES_VALUE },
  { SPIDER_NET_GFBFRMNUM, SPIDER_NET_GFXFRAMES_VALUE },
  { SPIDER_NET_GFCFRMNUM, SPIDER_NET_GFXFRAMES_VALUE },
  { SPIDER_NET_GFDFRMNUM, SPIDER_NET_GFXFRAMES_VALUE },

  { SPIDER_NET_GFFRMNUM, SPIDER_NET_FRAMENUM_VALUE },


  { SPIDER_NET_GFREECNNUM, 0 },
  { SPIDER_NET_GONETIMENUM, 0 },
  { SPIDER_NET_GTOUTFRMNUM, 0 },


  { SPIDER_NET_GRXMDSET, SPIDER_NET_RXMODE_VALUE },

  { SPIDER_NET_GTXMDSET, SPIDER_NET_TXMODE_VALUE },

  { SPIDER_NET_GIPSECINIT, SPIDER_NET_IPSECINIT_VALUE },

  { SPIDER_NET_GFTRESTRT, SPIDER_NET_RESTART_VALUE },

  { SPIDER_NET_GMRWOLCTRL, 0 },
  { SPIDER_NET_GTESTMD, 0x10000000 },
  { SPIDER_NET_GTTQMSK, 0x00400040 },

  { SPIDER_NET_GMACINTEN, 0 },


  { SPIDER_NET_GMACAPAUSE, SPIDER_NET_MACAPAUSE_VALUE },
  { SPIDER_NET_GMACTXPAUSE, SPIDER_NET_TXPAUSE_VALUE },

  { SPIDER_NET_GMACBSTLMT, SPIDER_NET_BURSTLMT_VALUE },
  { 0, 0}
 };

 i = 0;
 while (regs[i][0]) {
  spider_net_write_reg(card, regs[i][0], regs[i][1]);
  i++;
 }


 for (i = 1; i <= 14; i++) {
  spider_net_write_reg(card,
         SPIDER_NET_GMRUAFILnR + i * 8,
         0x00080000);
  spider_net_write_reg(card,
         SPIDER_NET_GMRUAFILnR + i * 8 + 4,
         0x00000000);
 }

 spider_net_write_reg(card, SPIDER_NET_GMRUA0FIL15R, 0x08080000);

 spider_net_write_reg(card, SPIDER_NET_ECMODE, SPIDER_NET_ECMODE_VALUE);



 spider_net_enable_rxchtails(card);
 spider_net_enable_rxdmac(card);

 spider_net_write_reg(card, SPIDER_NET_GRXDMAEN, SPIDER_NET_WOL_VALUE);

 spider_net_write_reg(card, SPIDER_NET_GMACLENLMT,
        SPIDER_NET_LENLMT_VALUE);
 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD,
        SPIDER_NET_OPMODE_VALUE);

 spider_net_write_reg(card, SPIDER_NET_GDTDMACCNTR,
        SPIDER_NET_GDTBSTA);
}
