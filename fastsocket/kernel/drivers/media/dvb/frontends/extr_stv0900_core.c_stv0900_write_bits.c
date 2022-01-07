
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv0900_internal {int dummy; } ;


 int extract_mask_pos (int,int*,int*) ;
 int stv0900_read_reg (struct stv0900_internal*,int) ;
 int stv0900_write_reg (struct stv0900_internal*,int,int) ;

void stv0900_write_bits(struct stv0900_internal *intp, u32 label, u8 val)
{
 u8 reg, mask, pos;

 reg = stv0900_read_reg(intp, (label >> 16) & 0xffff);
 extract_mask_pos(label, &mask, &pos);

 val = mask & (val << pos);

 reg = (reg & (~mask)) | val;
 stv0900_write_reg(intp, (label >> 16) & 0xffff, reg);

}
