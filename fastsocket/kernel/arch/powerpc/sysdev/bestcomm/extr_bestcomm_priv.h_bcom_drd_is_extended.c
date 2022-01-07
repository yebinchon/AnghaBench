
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int desc ;


 int BCOM_DRD_EXTENDED ;

__attribute__((used)) static inline int
bcom_drd_is_extended(u32 desc)
{
 return (desc) & BCOM_DRD_EXTENDED;
}
