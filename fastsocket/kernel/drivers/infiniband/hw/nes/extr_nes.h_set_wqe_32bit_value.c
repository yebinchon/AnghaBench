
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int __le32 ;


 int cpu_to_le32 (size_t) ;

__attribute__((used)) static inline void
set_wqe_32bit_value(__le32 *wqe_words, u32 index, u32 value)
{
 wqe_words[index] = cpu_to_le32(value);
}
