
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nozomi {int card_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int F32_2 ;
 int F32_8 ;
 int dev_info (int *,char*,int ) ;
 scalar_t__ pci_resource_len (TYPE_1__*,int) ;

__attribute__((used)) static void nozomi_get_card_type(struct nozomi *dc)
{
 int i;
 u32 size = 0;

 for (i = 0; i < 6; i++)
  size += pci_resource_len(dc->pdev, i);


 dc->card_type = size == 2048 ? F32_2 : F32_8;

 dev_info(&dc->pdev->dev, "Card type is: %d\n", dc->card_type);
}
