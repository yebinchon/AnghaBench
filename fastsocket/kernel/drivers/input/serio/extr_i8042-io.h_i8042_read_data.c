
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I8042_DATA_REG ;
 int inb (int ) ;

__attribute__((used)) static inline int i8042_read_data(void)
{
 return inb(I8042_DATA_REG);
}
