
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int dummy; } ;


 int _int_mask_get (struct spu*,int) ;

__attribute__((used)) static u64 int_mask_get(struct spu *spu, int class)
{
 return _int_mask_get(spu, class);
}
