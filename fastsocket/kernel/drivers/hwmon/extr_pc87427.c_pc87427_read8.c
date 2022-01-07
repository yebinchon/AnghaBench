
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pc87427_data {size_t* address; } ;


 int inb (size_t) ;

__attribute__((used)) static inline int pc87427_read8(struct pc87427_data *data, u8 ldi, u8 reg)
{
 return inb(data->address[ldi] + reg);
}
