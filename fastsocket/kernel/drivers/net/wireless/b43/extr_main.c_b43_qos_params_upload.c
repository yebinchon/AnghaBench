
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_tx_queue_params {int cw_min; int txop; int cw_max; int aifs; } ;
struct b43_wldev {int qos_enabled; } ;
typedef int params ;


 unsigned int ARRAY_SIZE (int*) ;
 int B43_MMIO_RNG ;
 int B43_NR_QOSPARAMS ;
 size_t B43_QOSPARAM_AIFS ;
 size_t B43_QOSPARAM_BSLOTS ;
 size_t B43_QOSPARAM_CWCUR ;
 size_t B43_QOSPARAM_CWMAX ;
 size_t B43_QOSPARAM_CWMIN ;
 size_t B43_QOSPARAM_REGGAP ;
 unsigned int B43_QOSPARAM_STATUS ;
 size_t B43_QOSPARAM_TXOP ;
 int B43_SHM_SHARED ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int) ;
 int memset (int**,int ,int) ;

__attribute__((used)) static void b43_qos_params_upload(struct b43_wldev *dev,
      const struct ieee80211_tx_queue_params *p,
      u16 shm_offset)
{
 u16 params[B43_NR_QOSPARAMS];
 int bslots, tmp;
 unsigned int i;

 if (!dev->qos_enabled)
  return;

 bslots = b43_read16(dev, B43_MMIO_RNG) & p->cw_min;

 memset(&params, 0, sizeof(params));

 params[B43_QOSPARAM_TXOP] = p->txop * 32;
 params[B43_QOSPARAM_CWMIN] = p->cw_min;
 params[B43_QOSPARAM_CWMAX] = p->cw_max;
 params[B43_QOSPARAM_CWCUR] = p->cw_min;
 params[B43_QOSPARAM_AIFS] = p->aifs;
 params[B43_QOSPARAM_BSLOTS] = bslots;
 params[B43_QOSPARAM_REGGAP] = bslots + p->aifs;

 for (i = 0; i < ARRAY_SIZE(params); i++) {
  if (i == B43_QOSPARAM_STATUS) {
   tmp = b43_shm_read16(dev, B43_SHM_SHARED,
          shm_offset + (i * 2));

   tmp |= 0x100;
   b43_shm_write16(dev, B43_SHM_SHARED,
     shm_offset + (i * 2),
     tmp);
  } else {
   b43_shm_write16(dev, B43_SHM_SHARED,
     shm_offset + (i * 2),
     params[i]);
  }
 }
}
