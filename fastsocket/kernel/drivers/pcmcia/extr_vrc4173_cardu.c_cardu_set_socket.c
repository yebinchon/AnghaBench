
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vrc4173_socket_t ;
typedef int uint8_t ;
struct TYPE_3__ {int Vpp; int Vcc; int flags; } ;
typedef TYPE_1__ socket_state_t ;


 int CARD_OUT_EN ;
 int CARD_REST0 ;
 int CARD_TYPE_IO ;
 int EINVAL ;
 int INT_GEN_CNT ;
 int PWR_CNT ;
 int SS_IOCARD ;
 int SS_OUTPUT_ENA ;
 int SS_RESET ;
 int * cardu_sockets ;
 int exca_readb (int *,int ) ;
 int exca_writeb (int *,int ,int) ;
 int set_Vcc_value (int) ;
 int set_Vpp_value (int) ;

__attribute__((used)) static int cardu_set_socket(unsigned int sock, socket_state_t *state)
{
 vrc4173_socket_t *socket = &cardu_sockets[sock];
 uint8_t val;

 if (((state->Vpp == 33) || (state->Vpp == 50)) && (state->Vpp != state->Vcc))
   return -EINVAL;

 val = set_Vcc_value(state->Vcc);
 val |= set_Vpp_value(state->Vpp);
 if (state->flags & SS_OUTPUT_ENA) val |= CARD_OUT_EN;
 exca_writeb(socket, PWR_CNT, val);

 val = exca_readb(socket, INT_GEN_CNT) & CARD_REST0;
 if (state->flags & SS_RESET) val &= ~CARD_REST0;
 else val |= CARD_REST0;
 if (state->flags & SS_IOCARD) val |= CARD_TYPE_IO;
 exca_writeb(socket, INT_GEN_CNT, val);

 return 0;
}
