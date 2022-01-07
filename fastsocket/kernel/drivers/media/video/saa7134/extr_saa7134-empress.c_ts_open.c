
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_2__ {int vb_lock; } ;
struct saa7134_dev {TYPE_1__ empress_tsq; int empress_users; } ;
struct file {struct saa7134_dev* private_data; } ;


 int EBUSY ;
 int SAA7134_AUDIO_MUTE_CTRL ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dprintk (char*,int ) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int saa_readb (int ) ;
 int saa_writeb (int ,int) ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int ts_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7134_dev *dev = video_drvdata(file);
 int err;

 dprintk("open dev=%s\n", video_device_node_name(vdev));
 err = -EBUSY;
 if (!mutex_trylock(&dev->empress_tsq.vb_lock))
  return err;
 if (atomic_read(&dev->empress_users))
  goto done;


 saa_writeb(SAA7134_AUDIO_MUTE_CTRL,
  saa_readb(SAA7134_AUDIO_MUTE_CTRL) & ~(1 << 6));

 atomic_inc(&dev->empress_users);
 file->private_data = dev;
 err = 0;

done:
 mutex_unlock(&dev->empress_tsq.vb_lock);
 return err;
}
