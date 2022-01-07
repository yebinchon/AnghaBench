
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct zd_chip {int dummy; } ;


 int RF_RV_BITS ;
 int UW2453_REGWRITE (int,int) ;
 int zd_rfwrite_locked (struct zd_chip*,int ,int ) ;

__attribute__((used)) static int uw2453_write_vco_cfg(struct zd_chip *chip, u16 value)
{


 u32 val = 0x40000 | value;
 return zd_rfwrite_locked(chip, UW2453_REGWRITE(3, val), RF_RV_BITS);
}
