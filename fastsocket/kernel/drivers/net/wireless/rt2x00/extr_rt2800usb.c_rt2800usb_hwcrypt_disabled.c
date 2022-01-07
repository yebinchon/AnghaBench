
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;


 int modparam_nohwcrypt ;

__attribute__((used)) static bool rt2800usb_hwcrypt_disabled(struct rt2x00_dev *rt2x00dev)
{
 return modparam_nohwcrypt;
}
