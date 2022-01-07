
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int dummy; } ;
struct zd_mac {int dummy; } ;


 struct zd_mac* zd_chip_to_mac (int ) ;
 int zd_usb_to_chip (struct zd_usb*) ;

__attribute__((used)) static inline struct zd_mac *zd_usb_to_mac(struct zd_usb *usb)
{
 return zd_chip_to_mac(zd_usb_to_chip(usb));
}
