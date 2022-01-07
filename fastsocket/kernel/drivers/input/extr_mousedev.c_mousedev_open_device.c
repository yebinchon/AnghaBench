
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {scalar_t__ minor; int mutex; int open; int handle; int exist; } ;


 int ENODEV ;
 scalar_t__ MOUSEDEV_MIX ;
 int input_open_device (int *) ;
 int mixdev_open_devices () ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mousedev_open_device(struct mousedev *mousedev)
{
 int retval;

 retval = mutex_lock_interruptible(&mousedev->mutex);
 if (retval)
  return retval;

 if (mousedev->minor == MOUSEDEV_MIX)
  mixdev_open_devices();
 else if (!mousedev->exist)
  retval = -ENODEV;
 else if (!mousedev->open++) {
  retval = input_open_device(&mousedev->handle);
  if (retval)
   mousedev->open--;
 }

 mutex_unlock(&mousedev->mutex);
 return retval;
}
