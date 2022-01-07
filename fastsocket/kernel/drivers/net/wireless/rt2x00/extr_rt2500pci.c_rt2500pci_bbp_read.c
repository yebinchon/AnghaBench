
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int BBPCSR ;
 int BBPCSR_BUSY ;
 int BBPCSR_REGNUM ;
 int BBPCSR_VALUE ;
 int BBPCSR_WRITE_CONTROL ;
 scalar_t__ WAIT_FOR_BBP (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00_get_field32 (scalar_t__,int ) ;
 int rt2x00_set_field32 (scalar_t__*,int ,unsigned int const) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,scalar_t__) ;

__attribute__((used)) static void rt2500pci_bbp_read(struct rt2x00_dev *rt2x00dev,
          const unsigned int word, u8 *value)
{
 u32 reg;

 mutex_lock(&rt2x00dev->csr_mutex);
 if (WAIT_FOR_BBP(rt2x00dev, &reg)) {
  reg = 0;
  rt2x00_set_field32(&reg, BBPCSR_REGNUM, word);
  rt2x00_set_field32(&reg, BBPCSR_BUSY, 1);
  rt2x00_set_field32(&reg, BBPCSR_WRITE_CONTROL, 0);

  rt2x00mmio_register_write(rt2x00dev, BBPCSR, reg);

  WAIT_FOR_BBP(rt2x00dev, &reg);
 }

 *value = rt2x00_get_field32(reg, BBPCSR_VALUE);

 mutex_unlock(&rt2x00dev->csr_mutex);
}
