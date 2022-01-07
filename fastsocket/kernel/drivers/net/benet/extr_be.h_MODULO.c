
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int BUG_ON (int) ;

__attribute__((used)) static inline u32 MODULO(u16 val, u16 limit)
{
 BUG_ON(limit & (limit - 1));
 return val & (limit - 1);
}
