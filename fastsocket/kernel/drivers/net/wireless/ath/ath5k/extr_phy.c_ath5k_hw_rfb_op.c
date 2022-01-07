
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ pos; scalar_t__ col; } ;
struct ath5k_rf_reg {scalar_t__ index; scalar_t__ bank; TYPE_1__ field; } ;
struct ath5k_hw {int ah_rf_regs_count; scalar_t__* ah_offset; scalar_t__* ah_rf_banks; } ;
typedef scalar_t__ s32 ;


 int ATH5K_PRINTF (char*,...) ;
 int ath5k_hw_bitswap (scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned int
ath5k_hw_rfb_op(struct ath5k_hw *ah, const struct ath5k_rf_reg *rf_regs,
     u32 val, u8 reg_id, bool set)
{
 const struct ath5k_rf_reg *rfreg = ((void*)0);
 u8 offset, bank, num_bits, col, position;
 u16 entry;
 u32 mask, data, last_bit, bits_shifted, first_bit;
 u32 *rfb;
 s32 bits_left;
 int i;

 data = 0;
 rfb = ah->ah_rf_banks;

 for (i = 0; i < ah->ah_rf_regs_count; i++) {
  if (rf_regs[i].index == reg_id) {
   rfreg = &rf_regs[i];
   break;
  }
 }

 if (rfb == ((void*)0) || rfreg == ((void*)0)) {
  ATH5K_PRINTF("Rf register not found!\n");

  return 0;
 }

 bank = rfreg->bank;
 num_bits = rfreg->field.len;
 first_bit = rfreg->field.pos;
 col = rfreg->field.col;





 offset = ah->ah_offset[bank];


 if (!(col <= 3 && num_bits <= 32 && first_bit + num_bits <= 319)) {
  ATH5K_PRINTF("invalid values at offset %u\n", offset);
  return 0;
 }

 entry = ((first_bit - 1) / 8) + offset;
 position = (first_bit - 1) % 8;

 if (set)
  data = ath5k_hw_bitswap(val, num_bits);

 for (bits_shifted = 0, bits_left = num_bits; bits_left > 0;
      position = 0, entry++) {

  last_bit = (position + bits_left > 8) ? 8 :
     position + bits_left;

  mask = (((1 << last_bit) - 1) ^ ((1 << position) - 1)) <<
        (col * 8);

  if (set) {
   rfb[entry] &= ~mask;
   rfb[entry] |= ((data << position) << (col * 8)) & mask;
   data >>= (8 - position);
  } else {
   data |= (((rfb[entry] & mask) >> (col * 8)) >> position)
    << bits_shifted;
   bits_shifted += last_bit - position;
  }

  bits_left -= 8 - position;
 }

 data = set ? 1 : ath5k_hw_bitswap(data, num_bits);

 return data;
}
