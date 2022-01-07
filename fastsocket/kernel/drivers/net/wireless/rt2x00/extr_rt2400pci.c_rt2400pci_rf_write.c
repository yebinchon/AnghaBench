
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int RFCSR ;
 int RFCSR_BUSY ;
 int RFCSR_IF_SELECT ;
 int RFCSR_NUMBER_OF_BITS ;
 int RFCSR_VALUE ;
 scalar_t__ WAIT_FOR_RF (struct rt2x00_dev*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00_rf_write (struct rt2x00_dev*,unsigned int const,int const) ;
 int rt2x00_set_field32 (int*,int ,int const) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static void rt2400pci_rf_write(struct rt2x00_dev *rt2x00dev,
          const unsigned int word, const u32 value)
{
 u32 reg;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_RF(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field32(&reg, RFCSR_VALUE, value);
  rt2x00_set_field32(&reg, RFCSR_NUMBER_OF_BITS, 20);
  rt2x00_set_field32(&reg, RFCSR_IF_SELECT, 0);
  rt2x00_set_field32(&reg, RFCSR_BUSY, 1);

  rt2x00mmio_register_write(rt2x00dev, RFCSR, reg);
  rt2x00_rf_write(rt2x00dev, word, value);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);
}
