
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int empress_users; int empress_tsq; } ;
struct file {struct saa7134_dev* private_data; } ;


 int SAA7134_AUDIO_MUTE_CTRL ;
 int atomic_dec (int *) ;
 int saa_readb (int ) ;
 int saa_writeb (int ,int) ;
 int ts_reset_encoder (struct saa7134_dev*) ;
 int videobuf_mmap_free (int *) ;
 int videobuf_stop (int *) ;

__attribute__((used)) static int ts_release(struct file *file)
{
 struct saa7134_dev *dev = file->private_data;

 videobuf_stop(&dev->empress_tsq);
 videobuf_mmap_free(&dev->empress_tsq);


 ts_reset_encoder(dev);


 saa_writeb(SAA7134_AUDIO_MUTE_CTRL,
  saa_readb(SAA7134_AUDIO_MUTE_CTRL) | (1 << 6));

 atomic_dec(&dev->empress_users);

 return 0;
}
