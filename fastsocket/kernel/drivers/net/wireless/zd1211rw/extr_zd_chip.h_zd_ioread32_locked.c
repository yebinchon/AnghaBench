
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u32 ;
struct zd_chip {int dummy; } ;


 int zd_ioread32v_locked (struct zd_chip*,int *,int const*,int) ;

__attribute__((used)) static inline int zd_ioread32_locked(struct zd_chip *chip, u32 *value,
                              const zd_addr_t addr)
{
 return zd_ioread32v_locked(chip, value, (const zd_addr_t *)&addr, 1);
}
