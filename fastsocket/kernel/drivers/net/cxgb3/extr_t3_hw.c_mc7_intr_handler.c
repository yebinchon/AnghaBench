
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int addr_err; int parity_err; int uncorr_err; int corr_err; } ;
struct mc7 {scalar_t__ offset; int name; TYPE_2__ stats; struct adapter* adapter; } ;
struct TYPE_3__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;


 scalar_t__ A_MC7_CE_ADDR ;
 scalar_t__ A_MC7_CE_DATA0 ;
 scalar_t__ A_MC7_CE_DATA1 ;
 scalar_t__ A_MC7_CE_DATA2 ;
 scalar_t__ A_MC7_ERR_ADDR ;
 scalar_t__ A_MC7_INT_CAUSE ;
 scalar_t__ A_MC7_UE_ADDR ;
 scalar_t__ A_MC7_UE_DATA0 ;
 scalar_t__ A_MC7_UE_DATA1 ;
 scalar_t__ A_MC7_UE_DATA2 ;
 int CH_ALERT (struct adapter*,char*,int ,int,...) ;
 int CH_WARN (struct adapter*,char*,int ,int,int,int,int) ;
 int F_AE ;
 int F_CE ;
 int F_UE ;
 int G_PE (int) ;
 int MC7_INTR_FATAL ;
 int t3_fatal_err (struct adapter*) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_write_reg (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void mc7_intr_handler(struct mc7 *mc7)
{
 struct adapter *adapter = mc7->adapter;
 u32 cause = t3_read_reg(adapter, mc7->offset + A_MC7_INT_CAUSE);

 if (cause & F_CE) {
  mc7->stats.corr_err++;
  CH_WARN(adapter, "%s MC7 correctable error at addr 0x%x, "
   "data 0x%x 0x%x 0x%x\n", mc7->name,
   t3_read_reg(adapter, mc7->offset + A_MC7_CE_ADDR),
   t3_read_reg(adapter, mc7->offset + A_MC7_CE_DATA0),
   t3_read_reg(adapter, mc7->offset + A_MC7_CE_DATA1),
   t3_read_reg(adapter, mc7->offset + A_MC7_CE_DATA2));
 }

 if (cause & F_UE) {
  mc7->stats.uncorr_err++;
  CH_ALERT(adapter, "%s MC7 uncorrectable error at addr 0x%x, "
    "data 0x%x 0x%x 0x%x\n", mc7->name,
    t3_read_reg(adapter, mc7->offset + A_MC7_UE_ADDR),
    t3_read_reg(adapter, mc7->offset + A_MC7_UE_DATA0),
    t3_read_reg(adapter, mc7->offset + A_MC7_UE_DATA1),
    t3_read_reg(adapter, mc7->offset + A_MC7_UE_DATA2));
 }

 if (G_PE(cause)) {
  mc7->stats.parity_err++;
  CH_ALERT(adapter, "%s MC7 parity error 0x%x\n",
    mc7->name, G_PE(cause));
 }

 if (cause & F_AE) {
  u32 addr = 0;

  if (adapter->params.rev > 0)
   addr = t3_read_reg(adapter,
        mc7->offset + A_MC7_ERR_ADDR);
  mc7->stats.addr_err++;
  CH_ALERT(adapter, "%s MC7 address error: 0x%x\n",
    mc7->name, addr);
 }

 if (cause & MC7_INTR_FATAL)
  t3_fatal_err(adapter);

 t3_write_reg(adapter, mc7->offset + A_MC7_INT_CAUSE, cause);
}
