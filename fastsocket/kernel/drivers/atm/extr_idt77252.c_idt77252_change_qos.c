
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_map {int lacr; int index; int flags; } ;
struct idt77252_dev {int mutex; } ;
struct atm_vcc {int flags; int qos; struct vc_map* dev_data; struct atm_dev* dev; } ;
struct TYPE_4__ {scalar_t__ traffic_class; } ;
struct TYPE_3__ {scalar_t__ traffic_class; } ;
struct atm_qos {TYPE_2__ rxtp; TYPE_1__ txtp; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;




 scalar_t__ ATM_NONE ;


 int ATM_VF_HASQOS ;
 int EOPNOTSUPP ;
 int SAR_REG_TCMDQ ;
 int TCMDQ_LACR ;
 int VCF_IDLE ;
 int VCF_RX ;
 int VCF_TX ;
 int idt77252_init_cbr (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int idt77252_init_rx (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int idt77252_init_tx (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int idt77252_init_ubr (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ;
 int memcpy (int *,struct atm_qos*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int writel (int,int ) ;

__attribute__((used)) static int
idt77252_change_qos(struct atm_vcc *vcc, struct atm_qos *qos, int flags)
{
 struct atm_dev *dev = vcc->dev;
 struct idt77252_dev *card = dev->dev_data;
 struct vc_map *vc = vcc->dev_data;
 int error = 0;

 mutex_lock(&card->mutex);

 if (qos->txtp.traffic_class != ATM_NONE) {
      if (!test_bit(VCF_TX, &vc->flags)) {
   error = idt77252_init_tx(card, vc, vcc, qos);
   if (error)
    goto out;
  } else {
   switch (qos->txtp.traffic_class) {
   case 130:
    error = idt77252_init_cbr(card, vc, vcc, qos);
    if (error)
     goto out;
    break;

   case 129:
    error = idt77252_init_ubr(card, vc, vcc, qos);
    if (error)
     goto out;

    if (!test_bit(VCF_IDLE, &vc->flags)) {
     writel(TCMDQ_LACR | (vc->lacr << 16) |
            vc->index, SAR_REG_TCMDQ);
    }
    break;

   case 128:
   case 131:
    error = -EOPNOTSUPP;
    goto out;
   }
  }
 }

 if ((qos->rxtp.traffic_class != ATM_NONE) &&
     !test_bit(VCF_RX, &vc->flags)) {
  error = idt77252_init_rx(card, vc, vcc, qos);
  if (error)
   goto out;
 }

 memcpy(&vcc->qos, qos, sizeof(struct atm_qos));

 set_bit(ATM_VF_HASQOS, &vcc->flags);

out:
 mutex_unlock(&card->mutex);
 return error;
}
