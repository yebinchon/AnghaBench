
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;


 int tda8083_wait_diseqc_fifo (struct tda8083_state*,int) ;
 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_send_diseqc_msg (struct dvb_frontend* fe,
        struct dvb_diseqc_master_cmd *m)
{
 struct tda8083_state* state = fe->demodulator_priv;
 int i;

 tda8083_writereg (state, 0x29, (m->msg_len - 3) | (1 << 2));

 for (i=0; i<m->msg_len; i++)
  tda8083_writereg (state, 0x23 + i, m->msg[i]);

 tda8083_writereg (state, 0x29, (m->msg_len - 3) | (3 << 2));

 tda8083_wait_diseqc_fifo (state, 100);

 return 0;
}
