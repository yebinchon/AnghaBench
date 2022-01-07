
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u32 ;
struct zd_chip {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_ioread32_locked (struct zd_chip*,int *,int ) ;

int zd_ioread32(struct zd_chip *chip, zd_addr_t addr, u32 *value)
{
 int r;

 mutex_lock(&chip->mutex);
 r = zd_ioread32_locked(chip, value, addr);
 mutex_unlock(&chip->mutex);
 return r;
}
