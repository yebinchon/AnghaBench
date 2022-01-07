
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {scalar_t__ minor; int dev; int handle; } ;


 scalar_t__ MOUSEDEV_MIX ;
 int device_del (int *) ;
 int input_unregister_handle (int *) ;
 int mousedev_cleanup (struct mousedev*) ;
 int put_device (int *) ;

__attribute__((used)) static void mousedev_destroy(struct mousedev *mousedev)
{
 device_del(&mousedev->dev);
 mousedev_cleanup(mousedev);
 if (mousedev->minor != MOUSEDEV_MIX)
  input_unregister_handle(&mousedev->handle);
 put_device(&mousedev->dev);
}
