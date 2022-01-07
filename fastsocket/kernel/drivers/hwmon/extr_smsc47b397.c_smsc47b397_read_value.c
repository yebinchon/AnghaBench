
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smsc47b397_data {int lock; scalar_t__ addr; } ;


 int inb_p (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int smsc47b397_read_value(struct smsc47b397_data* data, u8 reg)
{
 int res;

 mutex_lock(&data->lock);
 outb(reg, data->addr);
 res = inb_p(data->addr + 1);
 mutex_unlock(&data->lock);
 return res;
}
