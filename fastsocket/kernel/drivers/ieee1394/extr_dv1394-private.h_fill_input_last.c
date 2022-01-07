
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_last {void** q; } ;


 void* cpu_to_le32 (unsigned int) ;

__attribute__((used)) static inline void fill_input_last(struct input_last *il,
        int want_interrupt,
        unsigned int data_size,
        unsigned long data_phys_addr)
{
 u32 temp = 3 << 28;
 temp |= 8 << 24;
 if (want_interrupt)
  temp |= 3 << 20;
 temp |= 0xC << 16;

 temp |= data_size;

 il->q[0] = cpu_to_le32(temp);
 il->q[1] = cpu_to_le32(data_phys_addr);
 il->q[2] = cpu_to_le32(1);
 il->q[3] = cpu_to_le32(data_size);
}
