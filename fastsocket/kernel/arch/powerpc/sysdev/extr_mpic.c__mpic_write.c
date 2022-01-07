
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mpic_reg_bank {int base; int dhost; } ;
typedef enum mpic_reg_type { ____Placeholder_mpic_reg_type } mpic_reg_type ;


 int dcr_write (int ,unsigned int,int ) ;



 int out_be32 (int ,int ) ;
 int out_le32 (int ,int ) ;

__attribute__((used)) static inline void _mpic_write(enum mpic_reg_type type,
          struct mpic_reg_bank *rb,
           unsigned int reg, u32 value)
{
 switch(type) {





 case 129:
  out_be32(rb->base + (reg >> 2), value);
  break;
 case 128:
 default:
  out_le32(rb->base + (reg >> 2), value);
  break;
 }
}
