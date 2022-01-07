
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct arcnet_local {int setup; int clockm; int clockp; int setup2; int config; int timeout; int backplane; } ;


 int ACOMMAND (int) ;
 int ARCRESET0 ;
 int ASTATUS () ;
 int AUTOINCflag ;
 int BUGMSG (int ,char*,int) ;
 int BUS_ALIGN ;
 int CFLAGScmd ;
 int CONFIGclear ;
 int D_INIT_REASONS ;
 int D_NORMAL ;
 int ENODEV ;
 int NORXflag ;
 int P1MODE ;
 int RDDATAflag ;
 int RESETclear ;
 int RESETflag ;
 int RESETtime ;
 int SETCONF ;
 int SET_SUBADR (int ) ;
 int SUB_SETUP1 ;
 int SUB_SETUP2 ;
 int TESTvalue ;
 int TXFREEflag ;
 int _ADDR_HI ;
 int _ADDR_LO ;
 int _COMMAND ;
 int _CONFIG ;
 int _MEMDATA ;
 int _XREG ;
 int inb (int) ;
 int mdelay (int) ;
 struct arcnet_local* netdev_priv (struct net_device*) ;
 int outb (int,int) ;

int com20020_check(struct net_device *dev)
{
 int ioaddr = dev->base_addr, status;
 struct arcnet_local *lp = netdev_priv(dev);

 ARCRESET0;
 mdelay(RESETtime);

 lp->setup = lp->clockm ? 0 : (lp->clockp << 1);
 lp->setup2 = (lp->clockm << 4) | 8;



 lp->setup = lp->setup | P1MODE;

 SET_SUBADR(SUB_SETUP1);
 outb(lp->setup, _XREG);

 if (lp->clockm != 0)
 {
  SET_SUBADR(SUB_SETUP2);
  outb(lp->setup2, _XREG);


  mdelay(1);
  outb(0x18, _COMMAND);
 }

 lp->config = 0x21 | (lp->timeout << 3) | (lp->backplane << 2);

 SETCONF;
 outb(0x42, ioaddr + BUS_ALIGN*7);

 status = ASTATUS();

 if ((status & 0x99) != (NORXflag | TXFREEflag | RESETflag)) {
  BUGMSG(D_NORMAL, "status invalid (%Xh).\n", status);
  return -ENODEV;
 }
 BUGMSG(D_INIT_REASONS, "status after reset: %X\n", status);


 outb(0x39, _CONFIG);
 outb(inb(ioaddr + BUS_ALIGN*8), ioaddr + BUS_ALIGN*7);

 ACOMMAND(CFLAGScmd | RESETclear | CONFIGclear);

 status = ASTATUS();
 BUGMSG(D_INIT_REASONS, "status after reset acknowledged: %X\n",
        status);


 outb(0 | RDDATAflag | AUTOINCflag, _ADDR_HI);
 outb(0, _ADDR_LO);

 if ((status = inb(_MEMDATA)) != TESTvalue) {
  BUGMSG(D_NORMAL, "Signature byte not found (%02Xh != D1h).\n",
         status);
  return -ENODEV;
 }
 return 0;
}
