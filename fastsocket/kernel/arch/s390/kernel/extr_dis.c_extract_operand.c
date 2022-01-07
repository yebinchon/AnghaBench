
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct operand {int shift; int bits; int flags; } ;


 int OPERAND_LENGTH ;
 int OPERAND_PCREL ;
 int OPERAND_SIGNED ;

__attribute__((used)) static unsigned int extract_operand(unsigned char *code,
        const struct operand *operand)
{
 unsigned int val;
 int bits;


 code += operand->shift / 8;
 bits = (operand->shift & 7) + operand->bits;
 val = 0;
 do {
  val <<= 8;
  val |= (unsigned int) *code++;
  bits -= 8;
 } while (bits > 0);
 val >>= -bits;
 val &= ((1U << (operand->bits - 1)) << 1) - 1;


 if (operand->bits == 20 && operand->shift == 20)
  val = (val & 0xff) << 12 | (val & 0xfff00) >> 8;


 if ((operand->flags & (OPERAND_SIGNED | OPERAND_PCREL)) &&
     (val & (1U << (operand->bits - 1))))
  val |= (-1U << (operand->bits - 1)) << 1;


 if (operand->flags & OPERAND_PCREL)
  val <<= 1;


 if (operand->flags & OPERAND_LENGTH)
  val++;
 return val;
}
