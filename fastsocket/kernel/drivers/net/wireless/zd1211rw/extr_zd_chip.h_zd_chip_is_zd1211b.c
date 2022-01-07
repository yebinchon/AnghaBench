
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_zd1211b; } ;
struct zd_chip {TYPE_1__ usb; } ;



__attribute__((used)) static inline int zd_chip_is_zd1211b(struct zd_chip *chip)
{
 return chip->usb.is_zd1211b;
}
