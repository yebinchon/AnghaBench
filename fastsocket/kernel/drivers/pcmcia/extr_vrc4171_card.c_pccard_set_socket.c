
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int io_irq; int csc_irq; } ;
typedef TYPE_1__ vrc4171_socket_t ;
typedef int uint8_t ;
struct pcmcia_socket {unsigned int sock; int lock; } ;
struct TYPE_6__ {int Vpp; int Vcc; int flags; scalar_t__ io_irq; int csc_mask; } ;
typedef TYPE_2__ socket_state_t ;


 unsigned int CARD_MAX_SLOTS ;
 int CARD_VOLTAGE_SELECT ;
 int EINVAL ;
 int I365_CSC ;
 int I365_CSCINT ;
 int I365_CSC_BVD1 ;
 int I365_CSC_BVD2 ;
 int I365_CSC_DETECT ;
 int I365_CSC_READY ;
 int I365_CSC_STSCHG ;
 int I365_INTCTL ;
 int I365_PC_IOCARD ;
 int I365_PC_RESET ;
 int I365_POWER ;
 int I365_PWR_OUT ;
 int POWER_ENABLE ;
 int SS_BATDEAD ;
 int SS_BATWARN ;
 int SS_DETECT ;
 int SS_IOCARD ;
 int SS_OUTPUT_ENA ;
 int SS_READY ;
 int SS_RESET ;
 int SS_STSCHG ;
 int VPP_GET_VCC ;
 int exca_read_byte (unsigned int,int ) ;
 int exca_write_byte (unsigned int,int ,int) ;
 int set_Vcc_value (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 TYPE_1__* vrc4171_sockets ;

__attribute__((used)) static int pccard_set_socket(struct pcmcia_socket *sock, socket_state_t *state)
{
 vrc4171_socket_t *socket;
 unsigned int slot;
 uint8_t voltage, power, control, cscint;

 if (sock == ((void*)0) || sock->sock >= CARD_MAX_SLOTS ||
     (state->Vpp != state->Vcc && state->Vpp != 0) ||
     (state->Vcc != 50 && state->Vcc != 33 && state->Vcc != 0))
  return -EINVAL;

 slot = sock->sock;
 socket = &vrc4171_sockets[slot];

 spin_lock_irq(&sock->lock);

 voltage = set_Vcc_value(state->Vcc);
 exca_write_byte(slot, CARD_VOLTAGE_SELECT, voltage);

 power = POWER_ENABLE;
 if (state->Vpp == state->Vcc)
  power |= VPP_GET_VCC;
 if (state->flags & SS_OUTPUT_ENA)
  power |= I365_PWR_OUT;
 exca_write_byte(slot, I365_POWER, power);

 control = 0;
 if (state->io_irq != 0)
  control |= socket->io_irq;
 if (state->flags & SS_IOCARD)
  control |= I365_PC_IOCARD;
 if (state->flags & SS_RESET)
  control &= ~I365_PC_RESET;
 else
  control |= I365_PC_RESET;
 exca_write_byte(slot, I365_INTCTL, control);

        cscint = 0;
        exca_write_byte(slot, I365_CSCINT, cscint);
 exca_read_byte(slot, I365_CSC);
 if (state->csc_mask != 0)
  cscint |= socket->csc_irq << 8;
 if (state->flags & SS_IOCARD) {
  if (state->csc_mask & SS_STSCHG)
   cscint |= I365_CSC_STSCHG;
 } else {
  if (state->csc_mask & SS_BATDEAD)
   cscint |= I365_CSC_BVD1;
  if (state->csc_mask & SS_BATWARN)
   cscint |= I365_CSC_BVD2;
 }
 if (state->csc_mask & SS_READY)
  cscint |= I365_CSC_READY;
 if (state->csc_mask & SS_DETECT)
  cscint |= I365_CSC_DETECT;
        exca_write_byte(slot, I365_CSCINT, cscint);

 spin_unlock_irq(&sock->lock);

 return 0;
}
