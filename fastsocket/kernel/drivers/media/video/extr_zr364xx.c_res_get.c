
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {int resources; int lock; } ;


 int _DBG (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int res_get(struct zr364xx_camera *cam)
{

 mutex_lock(&cam->lock);
 if (cam->resources) {

  mutex_unlock(&cam->lock);
  return 0;
 }

 cam->resources = 1;
 _DBG("res: get\n");
 mutex_unlock(&cam->lock);
 return 1;
}
