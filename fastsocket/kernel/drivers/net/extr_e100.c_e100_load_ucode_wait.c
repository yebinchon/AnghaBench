
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nic {int netdev; TYPE_2__* csr; int cuc_cmd; struct cb* cb_to_clean; } ;
struct firmware {int dummy; } ;
struct cb {int status; } ;
struct TYPE_3__ {int stat_ack; } ;
struct TYPE_4__ {TYPE_1__ scb; } ;


 int EPERM ;
 scalar_t__ IS_ERR (struct firmware const*) ;
 int PTR_ERR (struct firmware const*) ;
 int cb_complete ;
 int cb_ok ;
 int cpu_to_le16 (int ) ;
 int cuc_start ;
 int e100_exec_cb (struct nic*,void*,int ) ;
 struct firmware* e100_request_firmware (struct nic*) ;
 int e100_setup_ucode ;
 int e100_write_flush (struct nic*) ;
 int iowrite8 (int ,int *) ;
 int msleep (int) ;
 int netif_err (struct nic*,int ,int ,char*,...) ;
 int probe ;
 int udelay (int) ;

__attribute__((used)) static inline int e100_load_ucode_wait(struct nic *nic)
{
 const struct firmware *fw;
 int err = 0, counter = 50;
 struct cb *cb = nic->cb_to_clean;

 fw = e100_request_firmware(nic);

 if (!fw || IS_ERR(fw))
  return PTR_ERR(fw);

 if ((err = e100_exec_cb(nic, (void *)fw, e100_setup_ucode)))
  netif_err(nic, probe, nic->netdev,
     "ucode cmd failed with error %d\n", err);


 nic->cuc_cmd = cuc_start;


 e100_write_flush(nic);
 udelay(10);


 while (!(cb->status & cpu_to_le16(cb_complete))) {
  msleep(10);
  if (!--counter) break;
 }


 iowrite8(~0, &nic->csr->scb.stat_ack);


 if (!counter || !(cb->status & cpu_to_le16(cb_ok))) {
  netif_err(nic, probe, nic->netdev, "ucode load failed\n");
  err = -EPERM;
 }

 return err;
}
