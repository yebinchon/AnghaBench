
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int dummy; } ;



__attribute__((used)) static int pa11_dma_supported( struct device *dev, u64 mask)
{
 return 1;
}
