
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mousedev {int mixdev_open; int mixdev_node; int dev; } ;
struct TYPE_2__ {int mutex; scalar_t__ open; } ;


 int get_device (int *) ;
 int list_add_tail (int *,int *) ;
 TYPE_1__* mousedev_mix ;
 int mousedev_mix_list ;
 int mousedev_open_device (struct mousedev*) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mixdev_add_device(struct mousedev *mousedev)
{
 int retval;

 retval = mutex_lock_interruptible(&mousedev_mix->mutex);
 if (retval)
  return retval;

 if (mousedev_mix->open) {
  retval = mousedev_open_device(mousedev);
  if (retval)
   goto out;

  mousedev->mixdev_open = 1;
 }

 get_device(&mousedev->dev);
 list_add_tail(&mousedev->mixdev_node, &mousedev_mix_list);

 out:
 mutex_unlock(&mousedev_mix->mutex);
 return retval;
}
