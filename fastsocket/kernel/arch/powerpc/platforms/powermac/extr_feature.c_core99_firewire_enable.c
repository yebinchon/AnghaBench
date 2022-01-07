
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {scalar_t__ type; int flags; } ;
struct device_node {int dummy; } ;


 long ENODEV ;
 int LOCK (unsigned long) ;
 int MACIO_FLAG_FW_SUPPORTED ;
 int UNI_N_CLOCK_CNTL ;
 int UNI_N_CLOCK_CNTL_FW ;
 int UNLOCK (unsigned long) ;
 int UN_BIC (int ,int ) ;
 int UN_BIS (int ,int ) ;
 int UN_IN (int ) ;
 struct macio_chip* macio_chips ;
 scalar_t__ macio_intrepid ;
 scalar_t__ macio_keylargo ;
 scalar_t__ macio_pangea ;
 int mdelay (int) ;

__attribute__((used)) static long
core99_firewire_enable(struct device_node *node, long param, long value)
{
 unsigned long flags;
 struct macio_chip *macio;

 macio = &macio_chips[0];
 if (macio->type != macio_keylargo && macio->type != macio_pangea &&
     macio->type != macio_intrepid)
  return -ENODEV;
 if (!(macio->flags & MACIO_FLAG_FW_SUPPORTED))
  return -ENODEV;

 LOCK(flags);
 if (value) {
  UN_BIS(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_FW);
  (void)UN_IN(UNI_N_CLOCK_CNTL);
 } else {
  UN_BIC(UNI_N_CLOCK_CNTL, UNI_N_CLOCK_CNTL_FW);
  (void)UN_IN(UNI_N_CLOCK_CNTL);
 }
 UNLOCK(flags);
 mdelay(1);

 return 0;
}
