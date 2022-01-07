
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_map {int ntste; int flags; } ;
struct idt77252_dev {int tst_free; unsigned long utopia_pcr; int name; scalar_t__ tst_size; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_pcr; scalar_t__ pcr; scalar_t__ min_pcr; } ;
struct atm_qos {TYPE_1__ txtp; } ;


 int EINVAL ;
 int ENOSR ;
 int OPRINTK (char*,int ,int,...) ;
 int SAR_TST_RESERVED ;
 int TSTE_OPC_CBR ;
 int TXPRINTK (char*,int ,int) ;
 int VCF_TX ;
 int atm_pcr_goal (TYPE_1__*) ;
 int change_tst (struct idt77252_dev*,struct vc_map*,int,int ) ;
 int fill_tst (struct idt77252_dev*,struct vc_map*,int,int ) ;
 int printk (char*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
idt77252_init_cbr(struct idt77252_dev *card, struct vc_map *vc,
    struct atm_vcc *vcc, struct atm_qos *qos)
{
 int tst_free, tst_used, tst_entries;
 unsigned long tmpl, modl;
 int tcr, tcra;

 if ((qos->txtp.max_pcr == 0) &&
     (qos->txtp.pcr == 0) && (qos->txtp.min_pcr == 0)) {
  printk("%s: trying to open a CBR VC with cell rate = 0\n",
         card->name);
  return -EINVAL;
 }

 tst_used = 0;
 tst_free = card->tst_free;
 if (test_bit(VCF_TX, &vc->flags))
  tst_used = vc->ntste;
 tst_free += tst_used;

 tcr = atm_pcr_goal(&qos->txtp);
 tcra = tcr >= 0 ? tcr : -tcr;

 TXPRINTK("%s: CBR target cell rate = %d\n", card->name, tcra);

 tmpl = (unsigned long) tcra * ((unsigned long) card->tst_size - 2);
 modl = tmpl % (unsigned long)card->utopia_pcr;

 tst_entries = (int) (tmpl / card->utopia_pcr);
 if (tcr > 0) {
  if (modl > 0)
   tst_entries++;
 } else if (tcr == 0) {
  tst_entries = tst_free - SAR_TST_RESERVED;
  if (tst_entries <= 0) {
   printk("%s: no CBR bandwidth free.\n", card->name);
   return -ENOSR;
  }
 }

 if (tst_entries == 0) {
  printk("%s: selected CBR bandwidth < granularity.\n",
         card->name);
  return -EINVAL;
 }

 if (tst_entries > (tst_free - SAR_TST_RESERVED)) {
  printk("%s: not enough CBR bandwidth free.\n", card->name);
  return -ENOSR;
 }

 vc->ntste = tst_entries;

 card->tst_free = tst_free - tst_entries;
 if (test_bit(VCF_TX, &vc->flags)) {
  if (tst_used == tst_entries)
   return 0;

  OPRINTK("%s: modify %d -> %d entries in TST.\n",
   card->name, tst_used, tst_entries);
  change_tst(card, vc, tst_entries, TSTE_OPC_CBR);
  return 0;
 }

 OPRINTK("%s: setting %d entries in TST.\n", card->name, tst_entries);
 fill_tst(card, vc, tst_entries, TSTE_OPC_CBR);
 return 0;
}
