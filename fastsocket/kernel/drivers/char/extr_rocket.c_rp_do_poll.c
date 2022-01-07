
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int Word_t ;
struct TYPE_8__ {unsigned int numPorts; } ;
struct TYPE_7__ {scalar_t__ BusType; unsigned int* AiopIntrBits; } ;
typedef TYPE_1__ CONTROLLER_t ;


 int GetLineNumber (int,int,int) ;
 scalar_t__ POLL_PERIOD ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ isPCI ;
 scalar_t__ jiffies ;
 int max_board ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__* rcktpt_io_addr ;
 TYPE_6__* rocketModel ;
 int rocket_timer ;
 int rp_do_transmit (int ) ;
 int rp_handle_port (int ) ;
 int rp_num_ports_open ;
 int * rp_table ;
 TYPE_1__* sCtlNumToCtlPtr (int) ;
 unsigned char sGetAiopIntStatus (TYPE_1__*,int) ;
 unsigned int sGetControllerIntStatus (TYPE_1__*) ;
 unsigned int sPCIGetControllerIntStatus (TYPE_1__*) ;
 unsigned int* xmit_flags ;

__attribute__((used)) static void rp_do_poll(unsigned long dummy)
{
 CONTROLLER_t *ctlp;
 int ctrl, aiop, ch, line;
 unsigned int xmitmask, i;
 unsigned int CtlMask;
 unsigned char AiopMask;
 Word_t bit;


 for (ctrl = 0; ctrl < max_board; ctrl++) {
  if (rcktpt_io_addr[ctrl] <= 0)
   continue;


  ctlp = sCtlNumToCtlPtr(ctrl);







   CtlMask = sGetControllerIntStatus(ctlp);


  for (aiop = 0; CtlMask; aiop++) {
   bit = ctlp->AiopIntrBits[aiop];
   if (CtlMask & bit) {
    CtlMask &= ~bit;
    AiopMask = sGetAiopIntStatus(ctlp, aiop);


    for (ch = 0; AiopMask; AiopMask >>= 1, ch++) {
     if (AiopMask & 1) {



      line = GetLineNumber(ctrl, aiop, ch);
      rp_handle_port(rp_table[line]);
     }
    }
   }
  }

  xmitmask = xmit_flags[ctrl];







  if (xmitmask) {
   for (i = 0; i < rocketModel[ctrl].numPorts; i++) {
    if (xmitmask & (1 << i)) {
     aiop = (i & 0x18) >> 3;
     ch = i & 0x07;
     line = GetLineNumber(ctrl, aiop, ch);
     rp_do_transmit(rp_table[line]);
    }
   }
  }
 }




 if (atomic_read(&rp_num_ports_open))
  mod_timer(&rocket_timer, jiffies + POLL_PERIOD);
}
