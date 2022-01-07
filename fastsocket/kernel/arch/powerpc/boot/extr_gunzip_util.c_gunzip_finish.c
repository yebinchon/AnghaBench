
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ workspace; } ;
struct gunzip_state {TYPE_1__ s; } ;


 int gunzip_partial (struct gunzip_state*,void*,int) ;
 int zlib_inflateEnd (TYPE_1__*) ;

int gunzip_finish(struct gunzip_state *state, void *dst, int dstlen)
{
 int len;

 len = gunzip_partial(state, dst, dstlen);

 if (state->s.workspace) {
  zlib_inflateEnd(&state->s);
 }

 return len;
}
