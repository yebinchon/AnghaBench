
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct claw_privbk {TYPE_1__* p_env; int * p_mtc_envelope; } ;
struct claw_env {int dummy; } ;
struct ccwgroup_device {TYPE_2__** cdev; int dev; } ;
struct TYPE_4__ {void* handler; } ;
struct TYPE_3__ {int write_buffers; int read_buffers; struct claw_privbk* p_priv; void* write_size; void* read_size; scalar_t__ packing; int api_type; int host_name; int adapter_name; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int CLAW_DBF_TEXT_ (int,int ,char*,int) ;
 void* CLAW_FRAME_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ENVELOPE_SIZE ;
 int WS_NAME_NOT_DEF ;
 int claw_add_files (int *) ;
 void* claw_irq_handler ;
 int dev_err (int *,char*) ;
 int dev_set_drvdata (int *,struct claw_privbk*) ;
 int get_device (int *) ;
 void* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int probe_error (struct ccwgroup_device*) ;
 int put_device (int *) ;
 int setup ;

__attribute__((used)) static int
claw_probe(struct ccwgroup_device *cgdev)
{
 int rc;
 struct claw_privbk *privptr=((void*)0);

 CLAW_DBF_TEXT(2, setup, "probe");
 if (!get_device(&cgdev->dev))
  return -ENODEV;
 privptr = kzalloc(sizeof(struct claw_privbk), GFP_KERNEL);
 dev_set_drvdata(&cgdev->dev, privptr);
 if (privptr == ((void*)0)) {
  probe_error(cgdev);
  put_device(&cgdev->dev);
  CLAW_DBF_TEXT_(2, setup, "probex%d", -ENOMEM);
  return -ENOMEM;
 }
 privptr->p_mtc_envelope= kzalloc( MAX_ENVELOPE_SIZE, GFP_KERNEL);
 privptr->p_env = kzalloc(sizeof(struct claw_env), GFP_KERNEL);
        if ((privptr->p_mtc_envelope==((void*)0)) || (privptr->p_env==((void*)0))) {
                probe_error(cgdev);
  put_device(&cgdev->dev);
  CLAW_DBF_TEXT_(2, setup, "probex%d", -ENOMEM);
                return -ENOMEM;
        }
 memcpy(privptr->p_env->adapter_name,WS_NAME_NOT_DEF,8);
 memcpy(privptr->p_env->host_name,WS_NAME_NOT_DEF,8);
 memcpy(privptr->p_env->api_type,WS_NAME_NOT_DEF,8);
 privptr->p_env->packing = 0;
 privptr->p_env->write_buffers = 5;
 privptr->p_env->read_buffers = 5;
 privptr->p_env->read_size = CLAW_FRAME_SIZE;
 privptr->p_env->write_size = CLAW_FRAME_SIZE;
 rc = claw_add_files(&cgdev->dev);
 if (rc) {
  probe_error(cgdev);
  put_device(&cgdev->dev);
  dev_err(&cgdev->dev, "Creating the /proc files for a new"
  " CLAW device failed\n");
  CLAW_DBF_TEXT_(2, setup, "probex%d", rc);
  return rc;
 }
 privptr->p_env->p_priv = privptr;
        cgdev->cdev[0]->handler = claw_irq_handler;
 cgdev->cdev[1]->handler = claw_irq_handler;
 CLAW_DBF_TEXT(2, setup, "prbext 0");

        return 0;
}
