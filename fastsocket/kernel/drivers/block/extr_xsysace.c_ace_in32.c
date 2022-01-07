
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ace_device {int dummy; } ;


 int ace_in (struct ace_device*,int) ;

__attribute__((used)) static inline u32 ace_in32(struct ace_device *ace, int reg)
{
 return ace_in(ace, reg) | (ace_in(ace, reg + 2) << 16);
}
