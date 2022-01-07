
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct output_last {void** q; } ;


 void* cpu_to_le32 (unsigned long) ;

__attribute__((used)) static inline void fill_output_last(struct output_last *ol,
        int want_timestamp,
        int want_interrupt,
        unsigned int data_size,
        unsigned long data_phys_addr)
{
 u32 temp = 0;
 temp |= 1 << 28;

 if (want_timestamp)
  temp |= 1 << 27;

 if (want_interrupt)
  temp |= 3 << 20;

 temp |= 3 << 18;
 temp |= data_size;

 ol->q[0] = cpu_to_le32(temp);
 ol->q[1] = cpu_to_le32(data_phys_addr);
 ol->q[2] = cpu_to_le32(0);
 ol->q[3] = cpu_to_le32(0);
}
