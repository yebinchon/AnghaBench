
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct airo_info {TYPE_1__* dev; } ;
typedef int __le16 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 scalar_t__ DATA0 ;
 int SUCCESS ;
 int do8bitIO ;
 int outsb (scalar_t__,int const*,int) ;
 int outsw (scalar_t__,int const*,int) ;

__attribute__((used)) static int bap_write(struct airo_info *ai, const __le16 *pu16Src,
       int bytelen, int whichbap)
{
 bytelen = (bytelen + 1) & (~1);
 if ( !do8bitIO )
  outsw( ai->dev->base_addr+DATA0+whichbap,
         pu16Src, bytelen>>1 );
 else
  outsb( ai->dev->base_addr+DATA0+whichbap, pu16Src, bytelen );
 return SUCCESS;
}
