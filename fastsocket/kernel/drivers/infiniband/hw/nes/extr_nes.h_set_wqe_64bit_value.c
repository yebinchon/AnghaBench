
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
typedef int __le32 ;


 int cpu_to_le32 (size_t) ;
 size_t upper_32_bits (scalar_t__) ;

__attribute__((used)) static inline void
set_wqe_64bit_value(__le32 *wqe_words, u32 index, u64 value)
{
 wqe_words[index] = cpu_to_le32((u32) value);
 wqe_words[index + 1] = cpu_to_le32(upper_32_bits(value));
}
