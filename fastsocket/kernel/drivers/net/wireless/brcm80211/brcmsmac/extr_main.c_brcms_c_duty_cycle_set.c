
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
typedef void* u16 ;
struct brcms_c_info {void* tx_duty_cycle_cck; void* tx_duty_cycle_ofdm; TYPE_2__* hw; TYPE_1__* pub; } ;
struct TYPE_4__ {int d11core; } ;
struct TYPE_3__ {int unit; } ;


 int EINVAL ;
 int M_TX_IDLE_BUSY_RATIO_X_16_CCK ;
 int M_TX_IDLE_BUSY_RATIO_X_16_OFDM ;
 int brcms_b_write_shm (TYPE_2__*,int ,void*) ;
 int brcms_err (int ,char*,int ) ;

__attribute__((used)) static int
brcms_c_duty_cycle_set(struct brcms_c_info *wlc, int duty_cycle, bool isOFDM,
     bool writeToShm)
{
 int idle_busy_ratio_x_16 = 0;
 uint offset =
     isOFDM ? M_TX_IDLE_BUSY_RATIO_X_16_OFDM :
     M_TX_IDLE_BUSY_RATIO_X_16_CCK;
 if (duty_cycle > 100 || duty_cycle < 0) {
  brcms_err(wlc->hw->d11core,
     "wl%d:  duty cycle value off limit\n",
     wlc->pub->unit);
  return -EINVAL;
 }
 if (duty_cycle)
  idle_busy_ratio_x_16 = (100 - duty_cycle) * 16 / duty_cycle;

 if (writeToShm)
  brcms_b_write_shm(wlc->hw, offset, (u16) idle_busy_ratio_x_16);

 if (isOFDM)
  wlc->tx_duty_cycle_ofdm = (u16) duty_cycle;
 else
  wlc->tx_duty_cycle_cck = (u16) duty_cycle;

 return 0;
}
