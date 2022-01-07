
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tps65010 {int nmask2; int regstatus; int nmask1; int chgstatus; int chgconf; unsigned int charging; scalar_t__ model; int work; int flags; int por; int client; } ;


 int DRIVER_NAME ;
 int FLAG_VBUS_CHANGED ;
 int POWER_POLL_DELAY ;
 scalar_t__ TPS65013 ;
 int TPS_CHARGE_ENABLE ;
 int TPS_CHGSTATUS ;
 int TPS_CHG_AC ;
 int TPS_CHG_USB ;
 int TPS_REGSTATUS ;
 int TPS_REG_ONOFF ;
 int hibernate () ;
 int i2c_smbus_read_byte_data (int ,int ) ;
 int pr_info (char*,int ,...) ;
 int schedule_delayed_work (int *,int ) ;
 int set_bit (int ,int *) ;
 int show_chgconfig (int ,char*,int) ;
 int show_chgstatus (char*,int) ;

__attribute__((used)) static void tps65010_interrupt(struct tps65010 *tps)
{
 u8 tmp = 0, mask, poll;




 poll = 0;


 if (tps->nmask2) {
  tmp = i2c_smbus_read_byte_data(tps->client, TPS_REGSTATUS);
  mask = tmp ^ tps->regstatus;
  tps->regstatus = tmp;
  mask &= tps->nmask2;
 } else
  mask = 0;
 if (mask) {
  tps->regstatus = tmp;



  if (tmp & TPS_REG_ONOFF) {
   pr_info("%s: power off button\n", DRIVER_NAME);
   poll = 1;
  }
 }


 if (tps->nmask1) {
  tmp = i2c_smbus_read_byte_data(tps->client, TPS_CHGSTATUS);
  mask = tmp ^ tps->chgstatus;
  tps->chgstatus = tmp;
  mask &= tps->nmask1;
 } else
  mask = 0;
 if (mask) {
  unsigned charging = 0;

  show_chgstatus("chg/irq", tmp);
  if (tmp & (TPS_CHG_USB|TPS_CHG_AC))
   show_chgconfig(tps->por, "conf", tps->chgconf);





  if (!(tps->chgstatus & ~(TPS_CHG_USB|TPS_CHG_AC))
    && (tps->chgstatus & (TPS_CHG_USB|TPS_CHG_AC))
    && (tps->chgconf & TPS_CHARGE_ENABLE)
    ) {
   if (tps->chgstatus & TPS_CHG_USB) {

    if (mask & TPS_CHG_USB)
     set_bit(FLAG_VBUS_CHANGED, &tps->flags);
    charging = 1;
   } else if (tps->chgstatus & TPS_CHG_AC)
    charging = 1;
  }
  if (charging != tps->charging) {
   tps->charging = charging;
   pr_info("%s: battery %scharging\n",
    DRIVER_NAME, charging ? "" :
    ((tps->chgstatus & (TPS_CHG_USB|TPS_CHG_AC))
     ? "NOT " : "dis"));
  }
 }




 if ((tps->model != TPS65013 || !tps->charging)
   && (tps->chgstatus & (TPS_CHG_USB|TPS_CHG_AC)))
  poll = 1;
 if (poll)
  (void) schedule_delayed_work(&tps->work, POWER_POLL_DELAY);


}
