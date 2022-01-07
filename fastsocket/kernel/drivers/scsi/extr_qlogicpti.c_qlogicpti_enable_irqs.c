
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlogicpti {scalar_t__ qregs; } ;


 scalar_t__ SBUS_CTRL ;
 int SBUS_CTRL_ERIRQ ;
 int SBUS_CTRL_GENAB ;
 int sbus_writew (int,scalar_t__) ;

__attribute__((used)) static inline void qlogicpti_enable_irqs(struct qlogicpti *qpti)
{
 sbus_writew(SBUS_CTRL_ERIRQ | SBUS_CTRL_GENAB,
      qpti->qregs + SBUS_CTRL);
}
