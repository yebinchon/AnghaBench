
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {scalar_t__ b_acquire; } ;



__attribute__((used)) static inline int zr364xx_stop_acquire(struct zr364xx_camera *cam)
{
 cam->b_acquire = 0;
 return 0;
}
