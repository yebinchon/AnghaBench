
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u16 ;
struct brcms_c_info {TYPE_1__* hw; } ;
struct TYPE_2__ {int d11core; } ;






 int D11B_PLCP_SIGNAL_LE ;
 int D11B_PLCP_SIGNAL_LOCKED ;
 int brcms_err (int ,char*,int) ;

__attribute__((used)) static void brcms_c_cck_plcp_set(struct brcms_c_info *wlc, int rate_500,
        uint length, u8 *plcp)
{
 u16 usec = 0;
 u8 le = 0;

 switch (rate_500) {
 case 130:
  usec = length << 3;
  break;
 case 129:
  usec = length << 2;
  break;
 case 128:
  usec = (length << 4) / 11;
  if ((length << 4) - (usec * 11) > 0)
   usec++;
  break;
 case 131:
  usec = (length << 3) / 11;
  if ((length << 3) - (usec * 11) > 0) {
   usec++;
   if ((usec * 11) - (length << 3) >= 8)
    le = D11B_PLCP_SIGNAL_LE;
  }
  break;

 default:
  brcms_err(wlc->hw->d11core,
     "brcms_c_cck_plcp_set: unsupported rate %d\n",
     rate_500);
  rate_500 = 130;
  usec = length << 3;
  break;
 }

 plcp[0] = rate_500 * 5;

 plcp[1] = (u8) (le | D11B_PLCP_SIGNAL_LOCKED);

 plcp[2] = usec & 0xff;
 plcp[3] = (usec >> 8) & 0xff;

 plcp[4] = 0;
 plcp[5] = 0;
}
