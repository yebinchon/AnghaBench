
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int dev_state; } ;



__attribute__((used)) static inline void w9966_setState(struct w9966_dev* cam, int mask, int val)
{
 cam->dev_state = (cam->dev_state & ~mask) ^ val;
}
