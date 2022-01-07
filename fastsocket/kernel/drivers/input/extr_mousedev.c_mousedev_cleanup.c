
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;
struct mousedev {scalar_t__ open; struct input_handle handle; } ;


 int input_close_device (struct input_handle*) ;
 int mousedev_hangup (struct mousedev*) ;
 int mousedev_mark_dead (struct mousedev*) ;
 int mousedev_remove_chrdev (struct mousedev*) ;

__attribute__((used)) static void mousedev_cleanup(struct mousedev *mousedev)
{
 struct input_handle *handle = &mousedev->handle;

 mousedev_mark_dead(mousedev);
 mousedev_hangup(mousedev);
 mousedev_remove_chrdev(mousedev);


 if (mousedev->open)
  input_close_device(handle);
}
