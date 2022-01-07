
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zd_addr_t ;
typedef int u64 ;
typedef int u32 ;
struct zd_chip {int mutex; } ;


 int ARRAY_SIZE (int const*) ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_ioread32v_locked (struct zd_chip*,int*,int const*,int ) ;

u64 zd_chip_get_tsf(struct zd_chip *chip)
{
 int r;
 static const zd_addr_t aw_pt_bi_addr[] =
  { 128, 129 };
 u32 values[2];
 u64 tsf;

 mutex_lock(&chip->mutex);
 r = zd_ioread32v_locked(chip, values, (const zd_addr_t *)aw_pt_bi_addr,
                         ARRAY_SIZE(aw_pt_bi_addr));
 mutex_unlock(&chip->mutex);
 if (r)
  return 0;

 tsf = values[1];
 tsf = (tsf << 32) | values[0];

 return tsf;
}
