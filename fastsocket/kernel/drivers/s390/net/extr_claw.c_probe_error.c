
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct claw_privbk {struct claw_privbk* p_mtc_envelope; struct claw_privbk* p_env; } ;
struct ccwgroup_device {int dev; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 struct claw_privbk* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct claw_privbk*) ;
 int trace ;

__attribute__((used)) static void
probe_error( struct ccwgroup_device *cgdev)
{
 struct claw_privbk *privptr;

 CLAW_DBF_TEXT(4, trace, "proberr");
 privptr = dev_get_drvdata(&cgdev->dev);
 if (privptr != ((void*)0)) {
  dev_set_drvdata(&cgdev->dev, ((void*)0));
  kfree(privptr->p_env);
  kfree(privptr->p_mtc_envelope);
  kfree(privptr);
 }
}
