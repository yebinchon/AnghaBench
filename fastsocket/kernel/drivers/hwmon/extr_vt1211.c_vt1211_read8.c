
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct vt1211_data {scalar_t__ addr; } ;


 scalar_t__ inb (scalar_t__) ;

__attribute__((used)) static inline u8 vt1211_read8(struct vt1211_data *data, u8 reg)
{
 return inb(data->addr + reg);
}
