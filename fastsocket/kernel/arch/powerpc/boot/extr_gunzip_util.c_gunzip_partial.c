
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* next_out; int avail_out; int avail_in; int next_in; int msg; scalar_t__ workspace; } ;
struct gunzip_state {TYPE_1__ s; } ;


 int Z_FULL_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int fatal (char*,int,int ) ;
 int memcpy (void*,int,int) ;
 int min (int,unsigned int) ;
 int zlib_inflate (TYPE_1__*,int ) ;

int gunzip_partial(struct gunzip_state *state, void *dst, int dstlen)
{
 int len;

 if (state->s.workspace) {

  int r;

  state->s.next_out = dst;
  state->s.avail_out = dstlen;
  r = zlib_inflate(&state->s, Z_FULL_FLUSH);
  if (r != Z_OK && r != Z_STREAM_END)
   fatal("inflate returned %d msg: %s\n\r", r, state->s.msg);
  len = state->s.next_out - (unsigned char *)dst;
 } else {

  len = min(state->s.avail_in, (unsigned)dstlen);
  memcpy(dst, state->s.next_in, len);
  state->s.next_in += len;
  state->s.avail_in -= len;
 }
 return len;
}
