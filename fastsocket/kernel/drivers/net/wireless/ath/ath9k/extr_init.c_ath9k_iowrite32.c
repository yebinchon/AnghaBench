
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ath_softc {scalar_t__ mem; int sc_serial_rw; } ;
struct TYPE_2__ {scalar_t__ serialize_regmode; } ;
struct ath_hw {TYPE_1__ config; } ;
struct ath_common {scalar_t__ priv; } ;


 int NR_CPUS ;
 scalar_t__ SER_REG_MODE_ON ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int iowrite32 (scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath9k_iowrite32(void *hw_priv, u32 val, u32 reg_offset)
{
 struct ath_hw *ah = (struct ath_hw *) hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath_softc *sc = (struct ath_softc *) common->priv;

 if (NR_CPUS > 1 && ah->config.serialize_regmode == SER_REG_MODE_ON) {
  unsigned long flags;
  spin_lock_irqsave(&sc->sc_serial_rw, flags);
  iowrite32(val, sc->mem + reg_offset);
  spin_unlock_irqrestore(&sc->sc_serial_rw, flags);
 } else
  iowrite32(val, sc->mem + reg_offset);
}
