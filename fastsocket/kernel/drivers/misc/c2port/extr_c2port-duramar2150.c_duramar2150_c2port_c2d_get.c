
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2port_device {int dummy; } ;


 int C2D ;
 int DATA_PORT ;
 int inb (int ) ;

__attribute__((used)) static int duramar2150_c2port_c2d_get(struct c2port_device *dev)
{
 return inb(DATA_PORT) & C2D;
}
