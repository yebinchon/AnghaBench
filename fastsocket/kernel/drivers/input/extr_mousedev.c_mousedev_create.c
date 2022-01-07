
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int release; int devt; int * parent; int * class; } ;
struct TYPE_9__ {struct mousedev* private; struct input_handler* handler; int name; int dev; } ;
struct mousedev {int minor; int exist; TYPE_1__ dev; TYPE_2__ handle; int wait; int mutex; int client_lock; int mixdev_node; int client_list; } ;
struct input_handler {int dummy; } ;
struct input_dev {int dev; } ;


 int ENOMEM ;
 struct mousedev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INPUT_MAJOR ;
 int MKDEV (int ,scalar_t__) ;
 scalar_t__ MOUSEDEV_MINOR_BASE ;
 int MOUSEDEV_MIX ;
 int dev_name (TYPE_1__*) ;
 int dev_set_name (TYPE_1__*,char*,...) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int init_waitqueue_head (int *) ;
 int input_class ;
 int input_get_device (struct input_dev*) ;
 int input_register_handle (TYPE_2__*) ;
 int input_unregister_handle (TYPE_2__*) ;
 struct mousedev* kzalloc (int,int ) ;
 int lockdep_set_subclass (int *,int) ;
 int mousedev_cleanup (struct mousedev*) ;
 int mousedev_free ;
 int mousedev_install_chrdev (struct mousedev*) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct mousedev *mousedev_create(struct input_dev *dev,
     struct input_handler *handler,
     int minor)
{
 struct mousedev *mousedev;
 int error;

 mousedev = kzalloc(sizeof(struct mousedev), GFP_KERNEL);
 if (!mousedev) {
  error = -ENOMEM;
  goto err_out;
 }

 INIT_LIST_HEAD(&mousedev->client_list);
 INIT_LIST_HEAD(&mousedev->mixdev_node);
 spin_lock_init(&mousedev->client_lock);
 mutex_init(&mousedev->mutex);
 lockdep_set_subclass(&mousedev->mutex,
        minor == MOUSEDEV_MIX ? MOUSEDEV_MIX : 0);
 init_waitqueue_head(&mousedev->wait);

 if (minor == MOUSEDEV_MIX)
  dev_set_name(&mousedev->dev, "mice");
 else
  dev_set_name(&mousedev->dev, "mouse%d", minor);

 mousedev->minor = minor;
 mousedev->exist = 1;
 mousedev->handle.dev = input_get_device(dev);
 mousedev->handle.name = dev_name(&mousedev->dev);
 mousedev->handle.handler = handler;
 mousedev->handle.private = mousedev;

 mousedev->dev.class = &input_class;
 if (dev)
  mousedev->dev.parent = &dev->dev;
 mousedev->dev.devt = MKDEV(INPUT_MAJOR, MOUSEDEV_MINOR_BASE + minor);
 mousedev->dev.release = mousedev_free;
 device_initialize(&mousedev->dev);

 if (minor != MOUSEDEV_MIX) {
  error = input_register_handle(&mousedev->handle);
  if (error)
   goto err_free_mousedev;
 }

 error = mousedev_install_chrdev(mousedev);
 if (error)
  goto err_unregister_handle;

 error = device_add(&mousedev->dev);
 if (error)
  goto err_cleanup_mousedev;

 return mousedev;

 err_cleanup_mousedev:
 mousedev_cleanup(mousedev);
 err_unregister_handle:
 if (minor != MOUSEDEV_MIX)
  input_unregister_handle(&mousedev->handle);
 err_free_mousedev:
 put_device(&mousedev->dev);
 err_out:
 return ERR_PTR(error);
}
