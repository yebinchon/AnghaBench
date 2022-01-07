
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef unsigned int u16 ;



__attribute__((used)) static inline u16 get_order_of_qentries(u16 queue_entries)
{
 u8 ld = 1;
 while (((1U << ld) - 1) < queue_entries)
  ld++;
 return ld - 1;
}
