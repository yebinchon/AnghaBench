
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {int list; } ;
struct device {int dummy; } ;
typedef int name ;
struct TYPE_2__ {int directory; } ;


 int CSR_MODEL ;
 int ENOMEM ;
 int MAX_MODEL_NAME_LEN ;
 int avc_identify_subunit (struct firedtv*) ;
 int avc_register_remote_control (struct firedtv*) ;
 int backend ;
 struct firedtv* fdtv_alloc (struct device*,int *,char*,int) ;
 int fdtv_dvb_register (struct firedtv*) ;
 int fdtv_register_rc (struct firedtv*,struct device*) ;
 int fdtv_unregister_rc (struct firedtv*) ;
 int fw_csr_string (int ,int ,char*,int) ;
 TYPE_1__* fw_unit (struct device*) ;
 int kfree (struct firedtv*) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int node_list ;
 int node_list_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int node_probe(struct device *dev)
{
 struct firedtv *fdtv;
 char name[MAX_MODEL_NAME_LEN];
 int name_len, err;

 name_len = fw_csr_string(fw_unit(dev)->directory, CSR_MODEL,
     name, sizeof(name));

 fdtv = fdtv_alloc(dev, &backend, name, name_len >= 0 ? name_len : 0);
 if (!fdtv)
  return -ENOMEM;

 err = fdtv_register_rc(fdtv, dev);
 if (err)
  goto fail_free;

 spin_lock_irq(&node_list_lock);
 list_add_tail(&fdtv->list, &node_list);
 spin_unlock_irq(&node_list_lock);

 err = avc_identify_subunit(fdtv);
 if (err)
  goto fail;

 err = fdtv_dvb_register(fdtv);
 if (err)
  goto fail;

 avc_register_remote_control(fdtv);

 return 0;
fail:
 spin_lock_irq(&node_list_lock);
 list_del(&fdtv->list);
 spin_unlock_irq(&node_list_lock);
 fdtv_unregister_rc(fdtv);
fail_free:
 kfree(fdtv);

 return err;
}
