
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {struct spu_lscsa* lscsa; } ;
struct spu_lscsa {unsigned char* ls; } ;


 int ENOMEM ;
 int LS_SIZE ;
 int PAGE_SIZE ;
 int SetPageReserved (int ) ;
 int memset (struct spu_lscsa*,int ,int) ;
 struct spu_lscsa* vmalloc (int) ;
 int vmalloc_to_page (unsigned char*) ;

__attribute__((used)) static int spu_alloc_lscsa_std(struct spu_state *csa)
{
 struct spu_lscsa *lscsa;
 unsigned char *p;

 lscsa = vmalloc(sizeof(struct spu_lscsa));
 if (!lscsa)
  return -ENOMEM;
 memset(lscsa, 0, sizeof(struct spu_lscsa));
 csa->lscsa = lscsa;


 for (p = lscsa->ls; p < lscsa->ls + LS_SIZE; p += PAGE_SIZE)
  SetPageReserved(vmalloc_to_page(p));

 return 0;
}
