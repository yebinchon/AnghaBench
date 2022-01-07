
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct claw_privbk {TYPE_1__* channel; struct claw_privbk* p_env; struct claw_privbk* p_mtc_envelope; } ;
struct ccwgroup_device {scalar_t__ state; int dev; TYPE_2__** cdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct claw_privbk* irb; } ;


 int BUG_ON (int) ;
 scalar_t__ CCWGROUP_ONLINE ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int ) ;
 size_t READ ;
 size_t WRITE ;
 int claw_remove_files (int *) ;
 int claw_shutdown_device (struct ccwgroup_device*) ;
 struct claw_privbk* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct claw_privbk*) ;
 int put_device (int *) ;
 int setup ;

__attribute__((used)) static void
claw_remove_device(struct ccwgroup_device *cgdev)
{
 struct claw_privbk *priv;

 BUG_ON(!cgdev);
 CLAW_DBF_TEXT_(2, setup, "%s", dev_name(&cgdev->dev));
 priv = dev_get_drvdata(&cgdev->dev);
 BUG_ON(!priv);
 dev_info(&cgdev->dev, " will be removed.\n");
 if (cgdev->state == CCWGROUP_ONLINE)
  claw_shutdown_device(cgdev);
 claw_remove_files(&cgdev->dev);
 kfree(priv->p_mtc_envelope);
 priv->p_mtc_envelope=((void*)0);
 kfree(priv->p_env);
 priv->p_env=((void*)0);
 kfree(priv->channel[0].irb);
 priv->channel[0].irb=((void*)0);
 kfree(priv->channel[1].irb);
 priv->channel[1].irb=((void*)0);
 kfree(priv);
 dev_set_drvdata(&cgdev->dev, ((void*)0));
 dev_set_drvdata(&cgdev->cdev[READ]->dev, ((void*)0));
 dev_set_drvdata(&cgdev->cdev[WRITE]->dev, ((void*)0));
 put_device(&cgdev->dev);

 return;
}
