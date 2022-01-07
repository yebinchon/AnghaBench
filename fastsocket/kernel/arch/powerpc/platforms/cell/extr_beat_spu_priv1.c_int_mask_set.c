
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu {int dummy; } ;


 int _int_mask_set (struct spu*,int,int ) ;

__attribute__((used)) static void int_mask_set(struct spu *spu, int class, u64 mask)
{
 _int_mask_set(spu, class, mask);
}
