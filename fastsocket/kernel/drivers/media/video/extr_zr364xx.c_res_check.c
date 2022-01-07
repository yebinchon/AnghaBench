
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {int resources; } ;



__attribute__((used)) static inline int res_check(struct zr364xx_camera *cam)
{
 return cam->resources;
}
