
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct input_more {void** q; } ;


 void* cpu_to_le32 (unsigned long) ;

__attribute__((used)) static inline void fill_input_more(struct input_more *im,
       int want_interrupt,
       unsigned int data_size,
       unsigned long data_phys_addr)
{
 u32 temp = 2 << 28;
 temp |= 8 << 24;
 if (want_interrupt)
  temp |= 0 << 20;
 temp |= 0x0 << 16;

        temp |= data_size;

 im->q[0] = cpu_to_le32(temp);
 im->q[1] = cpu_to_le32(data_phys_addr);
 im->q[2] = cpu_to_le32(0);
 im->q[3] = cpu_to_le32(0);
}
