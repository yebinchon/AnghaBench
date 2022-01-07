
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {int dummy; } ;
struct serio {int dummy; } ;
struct iforce {struct serio* serio; int bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IFORCE_232 ;
 int iforce_init_device (struct iforce*) ;
 int kfree (struct iforce*) ;
 struct iforce* kzalloc (int,int ) ;
 int serio_close (struct serio*) ;
 int serio_open (struct serio*,struct serio_driver*) ;
 int serio_set_drvdata (struct serio*,struct iforce*) ;

__attribute__((used)) static int iforce_serio_connect(struct serio *serio, struct serio_driver *drv)
{
 struct iforce *iforce;
 int err;

 iforce = kzalloc(sizeof(struct iforce), GFP_KERNEL);
 if (!iforce)
  return -ENOMEM;

 iforce->bus = IFORCE_232;
 iforce->serio = serio;

 serio_set_drvdata(serio, iforce);

 err = serio_open(serio, drv);
 if (err)
  goto fail1;

 err = iforce_init_device(iforce);
 if (err)
  goto fail2;

 return 0;

 fail2: serio_close(serio);
 fail1: serio_set_drvdata(serio, ((void*)0));
 kfree(iforce);
 return err;
}
