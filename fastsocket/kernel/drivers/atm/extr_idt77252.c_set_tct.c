
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_map {int index; int class; int init_er; TYPE_1__* scq; } ;
struct idt77252_dev {int name; scalar_t__ tct_base; } ;
struct TYPE_2__ {int scd; } ;


 int ENOSYS ;
 int OPRINTK (char*,int ,unsigned long,int) ;
 int SAR_SRAM_TCT_SIZE ;




 int TCT_CBR ;
 int TCT_FLAG_UBR ;
 int TCT_HALT ;
 int TCT_IDLE ;
 int TCT_TSIF ;
 int TCT_UBR ;
 int write_sram (struct idt77252_dev*,unsigned long,int) ;

__attribute__((used)) static int
set_tct(struct idt77252_dev *card, struct vc_map *vc)
{
 unsigned long tct;

 tct = (unsigned long) (card->tct_base + vc->index * SAR_SRAM_TCT_SIZE);

 switch (vc->class) {
 case 130:
  OPRINTK("%s: writing TCT at 0x%lx, SCD 0x%lx.\n",
          card->name, tct, vc->scq->scd);

  write_sram(card, tct + 0, TCT_CBR | vc->scq->scd);
  write_sram(card, tct + 1, 0);
  write_sram(card, tct + 2, 0);
  write_sram(card, tct + 3, 0);
  write_sram(card, tct + 4, 0);
  write_sram(card, tct + 5, 0);
  write_sram(card, tct + 6, 0);
  write_sram(card, tct + 7, 0);
  break;

 case 129:
  OPRINTK("%s: writing TCT at 0x%lx, SCD 0x%lx.\n",
          card->name, tct, vc->scq->scd);

  write_sram(card, tct + 0, TCT_UBR | vc->scq->scd);
  write_sram(card, tct + 1, 0);
  write_sram(card, tct + 2, TCT_TSIF);
  write_sram(card, tct + 3, TCT_HALT | TCT_IDLE);
  write_sram(card, tct + 4, 0);
  write_sram(card, tct + 5, vc->init_er);
  write_sram(card, tct + 6, 0);
  write_sram(card, tct + 7, TCT_FLAG_UBR);
  break;

 case 128:
 case 131:
 default:
  return -ENOSYS;
 }

 return 0;
}
