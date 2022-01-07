
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucb_ts ;
typedef int ucb_gpio ;
struct ucb1400_ts {scalar_t__ id; struct snd_ac97* ac97; } ;
struct ucb1400_gpio {scalar_t__ id; struct snd_ac97* ac97; } ;
struct ucb1400 {void* ucb1400_gpio; void* ucb1400_ts; } ;
struct snd_ac97 {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int UCB_ID ;
 scalar_t__ UCB_ID_1400 ;
 int dev_set_drvdata (struct device*,struct ucb1400*) ;
 int kfree (struct ucb1400*) ;
 struct ucb1400* kzalloc (int,int ) ;
 int memset (struct ucb1400_ts*,int ,int) ;
 int platform_device_add (void*) ;
 int platform_device_add_data (void*,struct ucb1400_ts*,int) ;
 void* platform_device_alloc (char*,int) ;
 int platform_device_put (void*) ;
 int platform_device_unregister (void*) ;
 struct snd_ac97* to_ac97_t (struct device*) ;
 scalar_t__ ucb1400_reg_read (struct snd_ac97*,int ) ;

__attribute__((used)) static int ucb1400_core_probe(struct device *dev)
{
 int err;
 struct ucb1400 *ucb;
 struct ucb1400_ts ucb_ts;
 struct ucb1400_gpio ucb_gpio;
 struct snd_ac97 *ac97;

 memset(&ucb_ts, 0, sizeof(ucb_ts));
 memset(&ucb_gpio, 0, sizeof(ucb_gpio));

 ucb = kzalloc(sizeof(struct ucb1400), GFP_KERNEL);
 if (!ucb) {
  err = -ENOMEM;
  goto err;
 }

 dev_set_drvdata(dev, ucb);

 ac97 = to_ac97_t(dev);

 ucb_ts.id = ucb1400_reg_read(ac97, UCB_ID);
 if (ucb_ts.id != UCB_ID_1400) {
  err = -ENODEV;
  goto err0;
 }


 ucb_gpio.ac97 = ac97;
 ucb->ucb1400_gpio = platform_device_alloc("ucb1400_gpio", -1);
 if (!ucb->ucb1400_gpio) {
  err = -ENOMEM;
  goto err0;
 }
 err = platform_device_add_data(ucb->ucb1400_gpio, &ucb_gpio,
     sizeof(ucb_gpio));
 if (err)
  goto err1;
 err = platform_device_add(ucb->ucb1400_gpio);
 if (err)
  goto err1;


 ucb_ts.ac97 = ac97;
 ucb->ucb1400_ts = platform_device_alloc("ucb1400_ts", -1);
 if (!ucb->ucb1400_ts) {
  err = -ENOMEM;
  goto err2;
 }
 err = platform_device_add_data(ucb->ucb1400_ts, &ucb_ts,
     sizeof(ucb_ts));
 if (err)
  goto err3;
 err = platform_device_add(ucb->ucb1400_ts);
 if (err)
  goto err3;

 return 0;

err3:
 platform_device_put(ucb->ucb1400_ts);
err2:
 platform_device_unregister(ucb->ucb1400_gpio);
err1:
 platform_device_put(ucb->ucb1400_gpio);
err0:
 kfree(ucb);
err:
 return err;
}
