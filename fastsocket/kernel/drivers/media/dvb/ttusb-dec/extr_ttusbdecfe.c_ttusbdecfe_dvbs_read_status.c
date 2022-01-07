
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;

__attribute__((used)) static int ttusbdecfe_dvbs_read_status(struct dvb_frontend *fe,
 fe_status_t *status)
{
 *status = FE_HAS_SIGNAL | FE_HAS_VITERBI |
  FE_HAS_SYNC | FE_HAS_CARRIER | FE_HAS_LOCK;
 return 0;
}
