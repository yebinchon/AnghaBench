
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int RF_CSR_CFG ;
 int RF_CSR_CFG_BUSY ;
 int RF_CSR_CFG_DATA ;
 int RF_CSR_CFG_REGNUM ;
 int RF_CSR_CFG_WRITE ;
 scalar_t__ WAIT_FOR_RFCSR (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2800_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_get_field32 (scalar_t__,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,unsigned int const) ;

__attribute__((used)) static void rt2800_rfcsr_read(struct rt2x00_dev *rt2x00dev,
         const unsigned int word, u8 *value)
{
 u32 reg;

 mutex_lock(&rt2x00dev->csr_mutex);
 if (WAIT_FOR_RFCSR(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field32(&reg, RF_CSR_CFG_REGNUM, word);
  rt2x00_set_field32(&reg, RF_CSR_CFG_WRITE, 0);
  rt2x00_set_field32(&reg, RF_CSR_CFG_BUSY, 1);

  rt2800_register_write_lock(rt2x00dev, RF_CSR_CFG, reg);

  WAIT_FOR_RFCSR(rt2x00dev, &reg);
 }

 *value = rt2x00_get_field32(reg, RF_CSR_CFG_DATA);

 mutex_unlock(&rt2x00dev->csr_mutex);
}
