
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MAS2_ATTRIB_MASK ;
 int MAS2_M ;

__attribute__((used)) static inline u32 e500_shadow_mas2_attrib(u32 mas2, int usermode)
{



 return mas2 & MAS2_ATTRIB_MASK;

}
