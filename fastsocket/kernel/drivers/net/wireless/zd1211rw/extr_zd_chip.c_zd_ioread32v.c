
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u32 ;
struct zd_chip {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_ioread32v_locked (struct zd_chip*,int *,int const*,unsigned int) ;

int zd_ioread32v(struct zd_chip *chip, const zd_addr_t *addresses,
           u32 *values, unsigned int count)
{
 int r;

 mutex_lock(&chip->mutex);
 r = zd_ioread32v_locked(chip, values, addresses, count);
 mutex_unlock(&chip->mutex);
 return r;
}
