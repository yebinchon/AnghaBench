
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_reg_bank {int base; int dhost; } ;
typedef enum mpic_reg_type { ____Placeholder_mpic_reg_type } mpic_reg_type ;


 int dcr_read (int ,unsigned int) ;
 int in_be32 (int ) ;
 int in_le32 (int ) ;




__attribute__((used)) static inline u32 _mpic_read(enum mpic_reg_type type,
        struct mpic_reg_bank *rb,
        unsigned int reg)
{
 switch(type) {




 case 129:
  return in_be32(rb->base + (reg >> 2));
 case 128:
 default:
  return in_le32(rb->base + (reg >> 2));
 }
}
