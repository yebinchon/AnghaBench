
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dvb_frontend {struct bcm3510_state* demodulator_priv; } ;
struct TYPE_2__ {int LDUERC0; int LDUERC1; } ;
struct bcm3510_state {TYPE_1__ status2; } ;


 int bcm3510_refresh_state (struct bcm3510_state*) ;

__attribute__((used)) static int bcm3510_read_unc(struct dvb_frontend* fe, u32* unc)
{
 struct bcm3510_state* st = fe->demodulator_priv;
 bcm3510_refresh_state(st);
 *unc = (st->status2.LDUERC0 << 8) | st->status2.LDUERC1;
 return 0;
}
