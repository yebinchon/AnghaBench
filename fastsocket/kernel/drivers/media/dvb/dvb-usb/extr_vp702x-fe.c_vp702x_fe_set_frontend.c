
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vp702x_fe_state {scalar_t__ voltage; int status_check_interval; int d; int next_status_check; } ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {int frequency; TYPE_2__ u; } ;
struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; } ;


 scalar_t__ SEC_VOLTAGE_18 ;
 int deb_fe (char*,...) ;
 int do_div (int,int) ;
 int jiffies ;
 int vp702x_chksum (int*,int ,int) ;
 int vp702x_usb_inout_op (int ,int*,int,int*,int,int) ;

__attribute__((used)) static int vp702x_fe_set_frontend(struct dvb_frontend* fe,
      struct dvb_frontend_parameters *fep)
{
 struct vp702x_fe_state *st = fe->demodulator_priv;
 u32 freq = fep->frequency/1000;


 u64 sr;
 u8 cmd[8] = { 0 },ibuf[10];

 cmd[0] = (freq >> 8) & 0x7f;
 cmd[1] = freq & 0xff;
 cmd[2] = 1;

 sr = (u64) (fep->u.qpsk.symbol_rate/1000) << 20;
 do_div(sr,88000);
 cmd[3] = (sr >> 12) & 0xff;
 cmd[4] = (sr >> 4) & 0xff;
 cmd[5] = (sr << 4) & 0xf0;

 deb_fe("setting frontend to: %u -> %u (%x) LNB-based GHz, symbolrate: %d -> %lu (%lx)\n",
   fep->frequency,freq,freq, fep->u.qpsk.symbol_rate,
   (unsigned long) sr, (unsigned long) sr);




 if (st->voltage == SEC_VOLTAGE_18)
  cmd[6] |= 0x40;
 cmd[7] = vp702x_chksum(cmd,0,7);

 st->status_check_interval = 250;
 st->next_status_check = jiffies;

 vp702x_usb_inout_op(st->d,cmd,8,ibuf,10,100);

 if (ibuf[2] == 0 && ibuf[3] == 0)
  deb_fe("tuning failed.\n");
 else
  deb_fe("tuning succeeded.\n");

 return 0;
}
