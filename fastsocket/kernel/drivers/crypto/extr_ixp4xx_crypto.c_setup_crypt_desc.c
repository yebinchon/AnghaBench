
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_ctl {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NPE_QLEN ;
 int crypt_phys ;
 int crypt_virt ;
 int dev ;
 int dma_alloc_coherent (int ,int,int *,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int setup_crypt_desc(void)
{
 BUILD_BUG_ON(sizeof(struct crypt_ctl) != 64);
 crypt_virt = dma_alloc_coherent(dev,
   NPE_QLEN * sizeof(struct crypt_ctl),
   &crypt_phys, GFP_KERNEL);
 if (!crypt_virt)
  return -ENOMEM;
 memset(crypt_virt, 0, NPE_QLEN * sizeof(struct crypt_ctl));
 return 0;
}
