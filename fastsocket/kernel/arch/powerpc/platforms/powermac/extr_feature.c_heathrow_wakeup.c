
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int dummy; } ;


 int HRW_IOBUS_ENABLE ;
 int MACIO_IN32 (int) ;
 int MACIO_OUT32 (int,int) ;
 int dbdma_restore (struct macio_chip*,int ) ;
 int mdelay (int) ;
 int save_alt_dbdma ;
 int save_dbdma ;
 int* save_fcr ;
 int save_mbcr ;

__attribute__((used)) static void heathrow_wakeup(struct macio_chip *macio, int secondary)
{
 if (secondary) {
  MACIO_OUT32(0x38, save_fcr[2]);
  (void)MACIO_IN32(0x38);
  mdelay(1);
  MACIO_OUT32(0x3c, save_fcr[3]);
  (void)MACIO_IN32(0x38);
  mdelay(10);
  dbdma_restore(macio, save_alt_dbdma);
 } else {
  MACIO_OUT32(0x38, save_fcr[0] | HRW_IOBUS_ENABLE);
  (void)MACIO_IN32(0x38);
  mdelay(1);
  MACIO_OUT32(0x3c, save_fcr[1]);
  (void)MACIO_IN32(0x38);
  mdelay(1);
  MACIO_OUT32(0x34, save_mbcr);
  (void)MACIO_IN32(0x38);
  mdelay(10);
  dbdma_restore(macio, save_dbdma);
 }
}
