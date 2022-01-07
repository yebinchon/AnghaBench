
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ opcode_is_prefix (int const) ;
 scalar_t__ opcode_is_rex_prefix (int const) ;

const uint8_t *kmemcheck_opcode_get_primary(const uint8_t *op)
{

 while (opcode_is_prefix(*op))
  ++op;
 if (opcode_is_rex_prefix(*op))
  ++op;
 return op;
}
