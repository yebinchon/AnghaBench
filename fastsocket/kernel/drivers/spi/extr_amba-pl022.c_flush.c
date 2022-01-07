
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pl022 {int virtbase; TYPE_1__* adev; } ;
struct TYPE_2__ {int dev; } ;


 int SSP_DR (int ) ;
 int SSP_SR (int ) ;
 int SSP_SR_MASK_BSY ;
 int SSP_SR_MASK_RNE ;
 int dev_dbg (int *,char*) ;
 int loops_per_jiffy ;
 int readw (int ) ;

__attribute__((used)) static int flush(struct pl022 *pl022)
{
 unsigned long limit = loops_per_jiffy << 1;

 dev_dbg(&pl022->adev->dev, "flush\n");
 do {
  while (readw(SSP_SR(pl022->virtbase)) & SSP_SR_MASK_RNE)
   readw(SSP_DR(pl022->virtbase));
 } while ((readw(SSP_SR(pl022->virtbase)) & SSP_SR_MASK_BSY) && limit--);
 return limit;
}
