
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int giu_read (int ) ;
 int giu_write (int ,int ) ;

__attribute__((used)) static inline u16 giu_set(u16 offset, u16 set)
{
 u16 data;

 data = giu_read(offset);
 data |= set;
 giu_write(offset, data);

 return data;
}
