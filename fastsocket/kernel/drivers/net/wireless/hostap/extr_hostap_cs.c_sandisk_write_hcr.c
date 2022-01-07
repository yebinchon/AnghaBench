
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {struct net_device* dev; } ;
typedef TYPE_1__ local_info_t ;


 int HFA384X_OUTB (int,int ) ;
 int SANDISK_HCR_OFF ;
 int SANDISK_WLAN_ACTIVATION_OFF ;
 int udelay (int) ;

__attribute__((used)) static void sandisk_write_hcr(local_info_t *local, int hcr)
{
 struct net_device *dev = local->dev;
 int i;

 HFA384X_OUTB(0x80, SANDISK_WLAN_ACTIVATION_OFF);
 udelay(50);
 for (i = 0; i < 10; i++) {
  HFA384X_OUTB(hcr, SANDISK_HCR_OFF);
 }
 udelay(55);
 HFA384X_OUTB(0x45, SANDISK_WLAN_ACTIVATION_OFF);
}
