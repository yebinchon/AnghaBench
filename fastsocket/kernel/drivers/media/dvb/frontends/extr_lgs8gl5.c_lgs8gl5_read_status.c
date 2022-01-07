
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgs8gl5_state {int dummy; } ;
struct dvb_frontend {struct lgs8gl5_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int REG_STATUS ;
 int REG_STATUS_LOCK ;
 int REG_STATUS_SYNC ;
 int REG_STRENGTH ;
 int REG_STRENGTH_CARRIER ;
 int REG_STRENGTH_MASK ;
 int lgs8gl5_read_reg (struct lgs8gl5_state*,int ) ;

__attribute__((used)) static int
lgs8gl5_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct lgs8gl5_state *state = fe->demodulator_priv;
 u8 level = lgs8gl5_read_reg(state, REG_STRENGTH);
 u8 flags = lgs8gl5_read_reg(state, REG_STATUS);

 *status = 0;

 if ((level & REG_STRENGTH_MASK) > 0)
  *status |= FE_HAS_SIGNAL;
 if (level & REG_STRENGTH_CARRIER)
  *status |= FE_HAS_CARRIER;
 if (flags & REG_STATUS_SYNC)
  *status |= FE_HAS_SYNC;
 if (flags & REG_STATUS_LOCK)
  *status |= FE_HAS_LOCK;

 return 0;
}
