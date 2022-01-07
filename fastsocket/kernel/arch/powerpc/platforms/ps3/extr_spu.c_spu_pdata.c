
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_pdata {int dummy; } ;
struct spu {struct spu_pdata* pdata; } ;



__attribute__((used)) static struct spu_pdata *spu_pdata(struct spu *spu)
{
 return spu->pdata;
}
