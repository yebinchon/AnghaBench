
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int table_size_to_number_of_entries(unsigned char size)
{





 return (1 << size) << 13;
}
