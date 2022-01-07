
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_device {int dummy; } ;
struct bbc_i2c_bus {int temps; } ;
struct bbc_cpu_temperature {int index; void** fan_todo; int curr_amb_temp; int avg_amb_temp; int prev_amb_temp; int curr_cpu_temp; int avg_cpu_temp; int prev_cpu_temp; int client; int bp_list; int glob_list; } ;
struct TYPE_4__ {int high_pwroff; int low_pwroff; } ;
struct TYPE_3__ {int high_pwroff; int low_pwroff; } ;


 size_t FAN_AMBIENT ;
 size_t FAN_CPU ;
 void* FAN_SAME ;
 int GFP_KERNEL ;
 int MAX1617_WR_AMB_HIGHLIM ;
 int MAX1617_WR_AMB_LOWLIM ;
 int MAX1617_WR_CFG_BYTE ;
 int MAX1617_WR_CPU_HIGHLIM ;
 int MAX1617_WR_CPU_LOWLIM ;
 int MAX1617_WR_CVRATE_BYTE ;
 int all_temps ;
 TYPE_2__* amb_temp_limits ;
 int bbc_i2c_attach (struct bbc_i2c_bus*,struct of_device*) ;
 int bbc_i2c_writeb (int ,int,int ) ;
 TYPE_1__* cpu_temp_limits ;
 int get_current_temps (struct bbc_cpu_temperature*) ;
 int kfree (struct bbc_cpu_temperature*) ;
 struct bbc_cpu_temperature* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void attach_one_temp(struct bbc_i2c_bus *bp, struct of_device *op,
       int temp_idx)
{
 struct bbc_cpu_temperature *tp;

 tp = kzalloc(sizeof(*tp), GFP_KERNEL);
 if (!tp)
  return;

 tp->client = bbc_i2c_attach(bp, op);
 if (!tp->client) {
  kfree(tp);
  return;
 }


 tp->index = temp_idx;

 list_add(&tp->glob_list, &all_temps);
 list_add(&tp->bp_list, &bp->temps);




 bbc_i2c_writeb(tp->client, 0x00, MAX1617_WR_CFG_BYTE);
 bbc_i2c_writeb(tp->client, 0x02, MAX1617_WR_CVRATE_BYTE);


 bbc_i2c_writeb(tp->client, amb_temp_limits[tp->index].high_pwroff,
         MAX1617_WR_AMB_HIGHLIM);
 bbc_i2c_writeb(tp->client, amb_temp_limits[tp->index].low_pwroff,
         MAX1617_WR_AMB_LOWLIM);
 bbc_i2c_writeb(tp->client, cpu_temp_limits[tp->index].high_pwroff,
         MAX1617_WR_CPU_HIGHLIM);
 bbc_i2c_writeb(tp->client, cpu_temp_limits[tp->index].low_pwroff,
         MAX1617_WR_CPU_LOWLIM);

 get_current_temps(tp);
 tp->prev_cpu_temp = tp->avg_cpu_temp = tp->curr_cpu_temp;
 tp->prev_amb_temp = tp->avg_amb_temp = tp->curr_amb_temp;

 tp->fan_todo[FAN_AMBIENT] = FAN_SAME;
 tp->fan_todo[FAN_CPU] = FAN_SAME;
}
