
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u32 ;
struct txx9dmac_dev {int dummy; } ;
struct TYPE_4__ {void* CCR; void* DAIR; void* SAIR; } ;
struct TYPE_3__ {void* CCR; void* DAIR; void* SAIR; } ;
struct txx9dmac_desc {TYPE_2__ hwdesc32; TYPE_1__ hwdesc; } ;


 scalar_t__ __is_dmac64 (struct txx9dmac_dev*) ;

__attribute__((used)) static inline void txx9dmac_desc_set_nosimple(struct txx9dmac_dev *ddev,
           struct txx9dmac_desc *desc,
           u32 sai, u32 dai, u32 ccr)
{
 if (__is_dmac64(ddev)) {
  desc->hwdesc.SAIR = sai;
  desc->hwdesc.DAIR = dai;
  desc->hwdesc.CCR = ccr;
 } else {
  desc->hwdesc32.SAIR = sai;
  desc->hwdesc32.DAIR = dai;
  desc->hwdesc32.CCR = ccr;
 }
}
