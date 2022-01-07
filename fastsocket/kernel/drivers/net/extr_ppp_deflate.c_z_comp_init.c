
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_deflate_state {scalar_t__ w_size; int unit; int debug; int strm; scalar_t__ seqno; } ;


 int CILEN_DEFLATE ;
 unsigned char CI_DEFLATE ;
 unsigned char CI_DEFLATE_DRAFT ;
 unsigned char DEFLATE_CHK_SEQUENCE ;
 scalar_t__ DEFLATE_METHOD (unsigned char) ;
 scalar_t__ DEFLATE_METHOD_VAL ;
 scalar_t__ DEFLATE_SIZE (unsigned char) ;
 int zlib_deflateReset (int *) ;

__attribute__((used)) static int z_comp_init(void *arg, unsigned char *options, int opt_len,
         int unit, int hdrlen, int debug)
{
 struct ppp_deflate_state *state = (struct ppp_deflate_state *) arg;

 if (opt_len < CILEN_DEFLATE
     || (options[0] != CI_DEFLATE && options[0] != CI_DEFLATE_DRAFT)
     || options[1] != CILEN_DEFLATE
     || DEFLATE_METHOD(options[2]) != DEFLATE_METHOD_VAL
     || DEFLATE_SIZE(options[2]) != state->w_size
     || options[3] != DEFLATE_CHK_SEQUENCE)
  return 0;

 state->seqno = 0;
 state->unit = unit;
 state->debug = debug;

 zlib_deflateReset(&state->strm);

 return 1;
}
