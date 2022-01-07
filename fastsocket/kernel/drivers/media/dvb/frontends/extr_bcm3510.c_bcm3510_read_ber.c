
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct bcm3510_state* demodulator_priv; } ;
struct TYPE_2__ {int LDBER0; int LDBER1; int LDBER2; } ;
struct bcm3510_state {TYPE_1__ status2; } ;


 int bcm3510_refresh_state (struct bcm3510_state*) ;

__attribute__((used)) static int bcm3510_read_ber(struct dvb_frontend* fe, u32* ber)
{
 struct bcm3510_state* st = fe->demodulator_priv;
 bcm3510_refresh_state(st);

 *ber = (st->status2.LDBER0 << 16) | (st->status2.LDBER1 << 8) | st->status2.LDBER2;
 return 0;
}
