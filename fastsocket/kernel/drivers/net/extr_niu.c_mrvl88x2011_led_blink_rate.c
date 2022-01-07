
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int phy_addr; } ;


 int MRVL88X2011_LED_BLINK_CTL ;
 int MRVL88X2011_LED_BLKRATE_MASK ;
 int MRVL88X2011_USER_DEV2_ADDR ;
 int mdio_read (struct niu*,int ,int ,int ) ;
 int mdio_write (struct niu*,int ,int ,int ,int) ;

__attribute__((used)) static int mrvl88x2011_led_blink_rate(struct niu *np, int rate)
{
 int err;

 err = mdio_read(np, np->phy_addr, MRVL88X2011_USER_DEV2_ADDR,
   MRVL88X2011_LED_BLINK_CTL);
 if (err >= 0) {
  err &= ~MRVL88X2011_LED_BLKRATE_MASK;
  err |= (rate << 4);

  err = mdio_write(np, np->phy_addr, MRVL88X2011_USER_DEV2_ADDR,
     MRVL88X2011_LED_BLINK_CTL, err);
 }

 return err;
}
