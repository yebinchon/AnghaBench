
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct c2port_device {int dummy; } ;


 int C2D ;
 int DATA_PORT ;
 int inb (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;
 int update_lock ;

__attribute__((used)) static void duramar2150_c2port_c2d_set(struct c2port_device *dev, int status)
{
 u8 v;

 mutex_lock(&update_lock);

 v = inb(DATA_PORT);

 if (status)
  outb(v | C2D, DATA_PORT);
 else
  outb(v & ~C2D, DATA_PORT);

 mutex_unlock(&update_lock);
}
