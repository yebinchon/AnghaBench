
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int REX_W ;
 scalar_t__ opcode_is_prefix (int const) ;
 scalar_t__ opcode_is_rex_prefix (int const) ;

void kmemcheck_opcode_decode(const uint8_t *op, unsigned int *size)
{

 int operand_size_override = 4;


 for (; opcode_is_prefix(*op); ++op) {
  if (*op == 0x66)
   operand_size_override = 2;
 }


 if (opcode_is_rex_prefix(*op)) {
  uint8_t rex = *op;

  ++op;
  if (rex & REX_W) {
   switch (*op) {
   case 0x63:
    *size = 4;
    return;
   case 0x0f:
    ++op;

    switch (*op) {
    case 0xb6:
    case 0xbe:
     *size = 1;
     return;
    case 0xb7:
    case 0xbf:
     *size = 2;
     return;
    }

    break;
   }

   *size = 8;
   return;
  }
 }


 if (*op == 0x0f) {
  ++op;






  if (*op == 0xb7 || *op == 0xbf)
   operand_size_override = 2;
 }

 *size = (*op & 1) ? operand_size_override : 1;
}
