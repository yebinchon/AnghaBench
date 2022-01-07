
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_chip {int dummy; } ;


 int CR_INTERRUPT ;
 int HWINT_DISABLED ;
 int zd_iowrite32_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int disable_hwint(struct zd_chip *chip)
{
 return zd_iowrite32_locked(chip, HWINT_DISABLED, CR_INTERRUPT);
}
