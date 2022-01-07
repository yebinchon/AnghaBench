
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct dma_info {int ntxd; } ;


 int xxd (int ,int ) ;

__attribute__((used)) static uint txd(struct dma_info *di, uint x)
{
 return xxd(x, di->ntxd);
}
