
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int quality; } ;
struct TYPE_4__ {scalar_t__ mchip_mmregs; TYPE_1__ params; } ;


 scalar_t__ MCHIP_VRJ_TABLE_DATA ;
 int * jpeg_huffman_tables (int*) ;
 int * jpeg_quantisation_tables (int*,int ) ;
 TYPE_2__ meye ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void mchip_load_tables(void)
{
 int i;
 int length;
 u16 *tables;

 tables = jpeg_huffman_tables(&length);
 for (i = 0; i < length; i++)
  writel(tables[i], meye.mchip_mmregs + MCHIP_VRJ_TABLE_DATA);

 tables = jpeg_quantisation_tables(&length, meye.params.quality);
 for (i = 0; i < length; i++)
  writel(tables[i], meye.mchip_mmregs + MCHIP_VRJ_TABLE_DATA);
}
