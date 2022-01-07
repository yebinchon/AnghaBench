
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BCOM_DRD_INITIATOR_SHIFT ;

__attribute__((used)) static inline int
bcom_desc_initiator(u32 desc)
{
 return (desc >> BCOM_DRD_INITIATOR_SHIFT) & 0x1f;
}
