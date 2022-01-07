
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int slock; int lock; } ;


 int SAA7134_IRQ1 ;
 int SAA7134_IRQ2 ;
 int SAA7134_IRQ_REPORT ;
 scalar_t__ card_has_mpeg (struct saa7134_dev*) ;
 int dprintk (char*) ;
 int mutex_init (int *) ;
 int saa7134_hw_enable1 (struct saa7134_dev*) ;
 int saa7134_input_init1 (struct saa7134_dev*) ;
 int saa7134_track_gpio (struct saa7134_dev*,char*) ;
 int saa7134_ts_init1 (struct saa7134_dev*) ;
 int saa7134_vbi_init1 (struct saa7134_dev*) ;
 int saa7134_video_init1 (struct saa7134_dev*) ;
 int saa_readl (int ) ;
 int saa_writel (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int saa7134_hwinit1(struct saa7134_dev *dev)
{
 dprintk("hwinit1\n");

 saa_writel(SAA7134_IRQ1, 0);
 saa_writel(SAA7134_IRQ2, 0);


 saa_writel(SAA7134_IRQ_REPORT, saa_readl(SAA7134_IRQ_REPORT));

 mutex_init(&dev->lock);
 spin_lock_init(&dev->slock);

 saa7134_track_gpio(dev,"pre-init");
 saa7134_video_init1(dev);
 saa7134_vbi_init1(dev);
 if (card_has_mpeg(dev))
  saa7134_ts_init1(dev);
 saa7134_input_init1(dev);

 saa7134_hw_enable1(dev);

 return 0;
}
