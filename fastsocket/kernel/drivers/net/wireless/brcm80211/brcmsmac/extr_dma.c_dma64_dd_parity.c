
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma64desc {int addrlow; int addrhigh; int ctrl1; int ctrl2; } ;


 int parity32 (int) ;

__attribute__((used)) static bool dma64_dd_parity(struct dma64desc *dd)
{
 return parity32(dd->addrlow ^ dd->addrhigh ^ dd->ctrl1 ^ dd->ctrl2);
}
