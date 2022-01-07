
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct macb {TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ dev_addr; } ;


 int SA1B ;
 int SA1T ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int macb_writel (struct macb*,int ,int ) ;

__attribute__((used)) static void __macb_set_hwaddr(struct macb *bp)
{
 u32 bottom;
 u16 top;

 bottom = cpu_to_le32(*((u32 *)bp->dev->dev_addr));
 macb_writel(bp, SA1B, bottom);
 top = cpu_to_le16(*((u16 *)(bp->dev->dev_addr + 4)));
 macb_writel(bp, SA1T, top);
}
