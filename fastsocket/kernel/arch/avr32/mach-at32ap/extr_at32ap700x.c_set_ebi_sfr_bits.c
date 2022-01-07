
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HMATRIX_SLAVE_EBI ;
 int hmatrix_sfr_set_bits (int ,int ) ;

__attribute__((used)) static inline void set_ebi_sfr_bits(u32 mask)
{
 hmatrix_sfr_set_bits(HMATRIX_SLAVE_EBI, mask);
}
