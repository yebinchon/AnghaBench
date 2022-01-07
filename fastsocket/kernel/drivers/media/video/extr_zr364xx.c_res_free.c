
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zr364xx_camera {int lock; scalar_t__ resources; } ;


 int _DBG (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void res_free(struct zr364xx_camera *cam)
{
 mutex_lock(&cam->lock);
 cam->resources = 0;
 mutex_unlock(&cam->lock);
 _DBG("res: put\n");
}
