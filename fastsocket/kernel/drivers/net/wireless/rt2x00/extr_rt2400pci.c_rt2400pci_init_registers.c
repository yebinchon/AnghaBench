
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00_dev {TYPE_3__* ops; TYPE_1__* rx; } ;
struct TYPE_6__ {TYPE_2__* lib; } ;
struct TYPE_5__ {scalar_t__ (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;
struct TYPE_4__ {int data_size; } ;


 int ARCSR0 ;
 int ARCSR0_AR_BBP_DATA0 ;
 int ARCSR0_AR_BBP_DATA1 ;
 int ARCSR0_AR_BBP_ID0 ;
 int ARCSR0_AR_BBP_ID1 ;
 int CNT0 ;
 int CNT3 ;
 int CNT4 ;
 int CSR1 ;
 int CSR14 ;
 int CSR14_BEACON_GEN ;
 int CSR14_CFP_COUNT_PRELOAD ;
 int CSR14_TATIMW ;
 int CSR14_TBCM_PRELOAD ;
 int CSR14_TBCN ;
 int CSR14_TCFP ;
 int CSR14_TSF_COUNT ;
 int CSR14_TSF_SYNC ;
 int CSR1_BBP_RESET ;
 int CSR1_HOST_READY ;
 int CSR1_SOFT_RESET ;
 int CSR9 ;
 int CSR9_MAX_FRAME_UNIT ;
 int EBUSY ;
 int MACCSR0 ;
 int MACCSR1 ;
 int MACCSR2 ;
 int MACCSR2_DELAY ;
 int PSCSR0 ;
 int PSCSR1 ;
 int PSCSR2 ;
 int PSCSR3 ;
 int PWRCSR0 ;
 int RALINKCSR ;
 int RALINKCSR_AR_BBP_DATA0 ;
 int RALINKCSR_AR_BBP_DATA1 ;
 int RALINKCSR_AR_BBP_ID0 ;
 int RALINKCSR_AR_BBP_ID1 ;
 int RXCSR3 ;
 int RXCSR3_BBP_ID0 ;
 int RXCSR3_BBP_ID0_VALID ;
 int RXCSR3_BBP_ID1 ;
 int RXCSR3_BBP_ID1_VALID ;
 int RXCSR3_BBP_ID2 ;
 int RXCSR3_BBP_ID2_VALID ;
 int STATE_AWAKE ;
 int TIMECSR ;
 int TIMECSR_BEACON_EXPECT ;
 int TIMECSR_US_64_COUNT ;
 int TIMECSR_US_COUNT ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;
 scalar_t__ stub1 (struct rt2x00_dev*,int ) ;

__attribute__((used)) static int rt2400pci_init_registers(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;

 rt2x00mmio_register_write(rt2x00dev, PSCSR0, 0x00020002);
 rt2x00mmio_register_write(rt2x00dev, PSCSR1, 0x00000002);
 rt2x00mmio_register_write(rt2x00dev, PSCSR2, 0x00023f20);
 rt2x00mmio_register_write(rt2x00dev, PSCSR3, 0x00000002);

 rt2x00mmio_register_read(rt2x00dev, TIMECSR, &reg);
 rt2x00_set_field32(&reg, TIMECSR_US_COUNT, 33);
 rt2x00_set_field32(&reg, TIMECSR_US_64_COUNT, 63);
 rt2x00_set_field32(&reg, TIMECSR_BEACON_EXPECT, 0);
 rt2x00mmio_register_write(rt2x00dev, TIMECSR, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR9, &reg);
 rt2x00_set_field32(&reg, CSR9_MAX_FRAME_UNIT,
      (rt2x00dev->rx->data_size / 128));
 rt2x00mmio_register_write(rt2x00dev, CSR9, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR14, &reg);
 rt2x00_set_field32(&reg, CSR14_TSF_COUNT, 0);
 rt2x00_set_field32(&reg, CSR14_TSF_SYNC, 0);
 rt2x00_set_field32(&reg, CSR14_TBCN, 0);
 rt2x00_set_field32(&reg, CSR14_TCFP, 0);
 rt2x00_set_field32(&reg, CSR14_TATIMW, 0);
 rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 0);
 rt2x00_set_field32(&reg, CSR14_CFP_COUNT_PRELOAD, 0);
 rt2x00_set_field32(&reg, CSR14_TBCM_PRELOAD, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR14, reg);

 rt2x00mmio_register_write(rt2x00dev, CNT3, 0x3f080000);

 rt2x00mmio_register_read(rt2x00dev, ARCSR0, &reg);
 rt2x00_set_field32(&reg, ARCSR0_AR_BBP_DATA0, 133);
 rt2x00_set_field32(&reg, ARCSR0_AR_BBP_ID0, 134);
 rt2x00_set_field32(&reg, ARCSR0_AR_BBP_DATA1, 136);
 rt2x00_set_field32(&reg, ARCSR0_AR_BBP_ID1, 135);
 rt2x00mmio_register_write(rt2x00dev, ARCSR0, reg);

 rt2x00mmio_register_read(rt2x00dev, RXCSR3, &reg);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID0, 3);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID0_VALID, 1);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID1, 32);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID1_VALID, 1);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID2, 36);
 rt2x00_set_field32(&reg, RXCSR3_BBP_ID2_VALID, 1);
 rt2x00mmio_register_write(rt2x00dev, RXCSR3, reg);

 rt2x00mmio_register_write(rt2x00dev, PWRCSR0, 0x3f3b3100);

 if (rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_AWAKE))
  return -EBUSY;

 rt2x00mmio_register_write(rt2x00dev, MACCSR0, 0x00217223);
 rt2x00mmio_register_write(rt2x00dev, MACCSR1, 0x00235518);

 rt2x00mmio_register_read(rt2x00dev, MACCSR2, &reg);
 rt2x00_set_field32(&reg, MACCSR2_DELAY, 64);
 rt2x00mmio_register_write(rt2x00dev, MACCSR2, reg);

 rt2x00mmio_register_read(rt2x00dev, RALINKCSR, &reg);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_DATA0, 17);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_ID0, 154);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_DATA1, 0);
 rt2x00_set_field32(&reg, RALINKCSR_AR_BBP_ID1, 154);
 rt2x00mmio_register_write(rt2x00dev, RALINKCSR, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR1, &reg);
 rt2x00_set_field32(&reg, CSR1_SOFT_RESET, 1);
 rt2x00_set_field32(&reg, CSR1_BBP_RESET, 0);
 rt2x00_set_field32(&reg, CSR1_HOST_READY, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, CSR1, &reg);
 rt2x00_set_field32(&reg, CSR1_SOFT_RESET, 0);
 rt2x00_set_field32(&reg, CSR1_HOST_READY, 1);
 rt2x00mmio_register_write(rt2x00dev, CSR1, reg);






 rt2x00mmio_register_read(rt2x00dev, CNT0, &reg);
 rt2x00mmio_register_read(rt2x00dev, CNT4, &reg);

 return 0;
}
