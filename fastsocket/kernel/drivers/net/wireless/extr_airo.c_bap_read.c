
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct airo_info {int (* bap_read ) (struct airo_info*,int *,int,int) ;} ;
typedef int __le16 ;


 int stub1 (struct airo_info*,int *,int,int) ;

__attribute__((used)) static inline int bap_read(struct airo_info *ai, __le16 *pu16Dst, int bytelen,
      int whichbap)
{
 return ai->bap_read(ai, pu16Dst, bytelen, whichbap);
}
