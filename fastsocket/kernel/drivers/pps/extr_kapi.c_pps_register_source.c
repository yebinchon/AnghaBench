
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pps_source_info {int mode; int name; int * echo; } ;
struct TYPE_2__ {int mode; int api_version; } ;
struct pps_device {int dev; int lock; int queue; struct pps_source_info info; TYPE_1__ params; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PPS_API_VERS ;
 int PPS_ECHOASSERT ;
 int PPS_ECHOCLEAR ;
 int PPS_TSFMT_NTPFP ;
 int PPS_TSFMT_TSPEC ;
 int dev_info (int ,char*,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct pps_device*) ;
 struct pps_device* kzalloc (int,int ) ;
 int * pps_echo_client_default ;
 int pps_register_cdev (struct pps_device*) ;
 int pr_err (char*,int ) ;
 int spin_lock_init (int *) ;

struct pps_device *pps_register_source(struct pps_source_info *info,
  int default_params)
{
 struct pps_device *pps;
 int err;


 if ((info->mode & default_params) != default_params) {
  pr_err("%s: unsupported default parameters\n",
     info->name);
  err = -EINVAL;
  goto pps_register_source_exit;
 }
 if ((info->mode & (PPS_TSFMT_TSPEC | PPS_TSFMT_NTPFP)) == 0) {
  pr_err("%s: unspecified time format\n",
     info->name);
  err = -EINVAL;
  goto pps_register_source_exit;
 }


 pps = kzalloc(sizeof(struct pps_device), GFP_KERNEL);
 if (pps == ((void*)0)) {
  err = -ENOMEM;
  goto pps_register_source_exit;
 }




 pps->params.api_version = PPS_API_VERS;
 pps->params.mode = default_params;
 pps->info = *info;


 if ((pps->info.mode & (PPS_ECHOASSERT | PPS_ECHOCLEAR)) &&
   pps->info.echo == ((void*)0))
  pps->info.echo = pps_echo_client_default;

 init_waitqueue_head(&pps->queue);
 spin_lock_init(&pps->lock);


 err = pps_register_cdev(pps);
 if (err < 0) {
  pr_err("%s: unable to create char device\n",
     info->name);
  goto kfree_pps;
 }

 dev_info(pps->dev, "new PPS source %s\n", info->name);

 return pps;

kfree_pps:
 kfree(pps);

pps_register_source_exit:
 pr_err("%s: unable to register source\n", info->name);

 return ((void*)0);
}
