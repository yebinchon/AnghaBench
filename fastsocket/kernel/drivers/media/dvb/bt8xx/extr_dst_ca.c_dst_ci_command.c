
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int dst_mutex; } ;


 int DST_CA_ERROR ;
 int DST_CA_INFO ;
 int DST_CA_NOTICE ;
 int EIO ;
 int GET_ACK ;
 int LONG_DELAY ;
 int dprintk (int ,int ,int,char*) ;
 int dst_comm_init (struct dst_state*) ;
 int dst_error_recovery (struct dst_state*) ;
 scalar_t__ dst_pio_disable (struct dst_state*) ;
 int dst_wait_dst_ready (struct dst_state*,int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ read_dst (struct dst_state*,int *,int) ;
 int verbose ;
 scalar_t__ write_dst (struct dst_state*,int *,int ) ;

__attribute__((used)) static int dst_ci_command(struct dst_state* state, u8 * data, u8 *ca_string, u8 len, int read)
{
 u8 reply;

 mutex_lock(&state->dst_mutex);
 dst_comm_init(state);
 msleep(65);

 if (write_dst(state, data, len)) {
  dprintk(verbose, DST_CA_INFO, 1, " Write not successful, trying to recover");
  dst_error_recovery(state);
  goto error;
 }
 if ((dst_pio_disable(state)) < 0) {
  dprintk(verbose, DST_CA_ERROR, 1, " DST PIO disable failed.");
  goto error;
 }
 if (read_dst(state, &reply, GET_ACK) < 0) {
  dprintk(verbose, DST_CA_INFO, 1, " Read not successful, trying to recover");
  dst_error_recovery(state);
  goto error;
 }
 if (read) {
  if (! dst_wait_dst_ready(state, LONG_DELAY)) {
   dprintk(verbose, DST_CA_NOTICE, 1, " 8820 not ready");
   goto error;
  }
  if (read_dst(state, ca_string, 128) < 0) {
   dprintk(verbose, DST_CA_INFO, 1, " Read not successful, trying to recover");
   dst_error_recovery(state);
   goto error;
  }
 }
 mutex_unlock(&state->dst_mutex);
 return 0;

error:
 mutex_unlock(&state->dst_mutex);
 return -EIO;
}
