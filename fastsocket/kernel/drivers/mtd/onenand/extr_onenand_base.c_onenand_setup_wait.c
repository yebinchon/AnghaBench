
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {scalar_t__ irq; int (* read_word ) (scalar_t__) ;void* wait; scalar_t__ base; int (* write_word ) (int,scalar_t__) ;int complete; } ;
struct mtd_info {struct onenand_chip* priv; } ;


 int IRQF_SHARED ;
 scalar_t__ ONENAND_REG_SYS_CFG1 ;
 int ONENAND_SYS_CFG1_IOBE ;
 int init_completion (int *) ;
 int onenand_interrupt ;
 void* onenand_try_interrupt_wait ;
 void* onenand_wait ;
 scalar_t__ request_irq (scalar_t__,int *,int ,char*,struct onenand_chip*) ;
 int stub1 (scalar_t__) ;
 int stub2 (int,scalar_t__) ;

__attribute__((used)) static void onenand_setup_wait(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 int syscfg;

 init_completion(&this->complete);

 if (this->irq <= 0) {
  this->wait = onenand_wait;
  return;
 }

 if (request_irq(this->irq, &onenand_interrupt,
    IRQF_SHARED, "onenand", this)) {

  this->wait = onenand_wait;
  return;
 }


 syscfg = this->read_word(this->base + ONENAND_REG_SYS_CFG1);
 syscfg |= ONENAND_SYS_CFG1_IOBE;
 this->write_word(syscfg, this->base + ONENAND_REG_SYS_CFG1);

 this->wait = onenand_try_interrupt_wait;
}
