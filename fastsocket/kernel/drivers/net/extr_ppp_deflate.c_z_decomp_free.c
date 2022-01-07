
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ppp_deflate_state* workspace; } ;
struct ppp_deflate_state {TYPE_1__ strm; } ;


 int kfree (struct ppp_deflate_state*) ;
 int zlib_inflateEnd (TYPE_1__*) ;

__attribute__((used)) static void z_decomp_free(void *arg)
{
 struct ppp_deflate_state *state = (struct ppp_deflate_state *) arg;

 if (state) {
  zlib_inflateEnd(&state->strm);
  kfree(state->strm.workspace);
  kfree(state);
 }
}
