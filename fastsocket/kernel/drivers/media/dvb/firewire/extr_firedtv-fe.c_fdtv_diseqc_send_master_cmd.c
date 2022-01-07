
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int dummy; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
struct dvb_diseqc_master_cmd {int dummy; } ;


 int LNBCONTROL_DONTCARE ;
 int avc_lnb_control (struct firedtv*,int ,int ,int ,int,struct dvb_diseqc_master_cmd*) ;

__attribute__((used)) static int fdtv_diseqc_send_master_cmd(struct dvb_frontend *fe,
           struct dvb_diseqc_master_cmd *cmd)
{
 struct firedtv *fdtv = fe->sec_priv;

 return avc_lnb_control(fdtv, LNBCONTROL_DONTCARE, LNBCONTROL_DONTCARE,
          LNBCONTROL_DONTCARE, 1, cmd);
}
