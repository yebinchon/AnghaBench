
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w9966_dev {int dev_state; } ;



__attribute__((used)) static inline int w9966_getState(struct w9966_dev* cam, int mask, int val)
{
 return ((cam->dev_state & mask) == val);
}
