
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * workspace; int * next_out; } ;
struct ppp_deflate_state {int w_size; TYPE_1__ strm; } ;


 int CILEN_DEFLATE ;
 unsigned char CI_DEFLATE ;
 unsigned char CI_DEFLATE_DRAFT ;
 unsigned char DEFLATE_CHK_SEQUENCE ;
 int DEFLATE_MAX_SIZE ;
 scalar_t__ DEFLATE_METHOD (unsigned char) ;
 scalar_t__ DEFLATE_METHOD_VAL ;
 int DEFLATE_MIN_SIZE ;
 int DEFLATE_SIZE (unsigned char) ;
 int GFP_KERNEL ;
 scalar_t__ Z_OK ;
 int __GFP_REPEAT ;
 int * kmalloc (int ,int) ;
 struct ppp_deflate_state* kzalloc (int,int) ;
 int z_decomp_free (struct ppp_deflate_state*) ;
 scalar_t__ zlib_inflateInit2 (TYPE_1__*,int) ;
 int zlib_inflate_workspacesize () ;

__attribute__((used)) static void *z_decomp_alloc(unsigned char *options, int opt_len)
{
 struct ppp_deflate_state *state;
 int w_size;

 if (opt_len != CILEN_DEFLATE
     || (options[0] != CI_DEFLATE && options[0] != CI_DEFLATE_DRAFT)
     || options[1] != CILEN_DEFLATE
     || DEFLATE_METHOD(options[2]) != DEFLATE_METHOD_VAL
     || options[3] != DEFLATE_CHK_SEQUENCE)
  return ((void*)0);
 w_size = DEFLATE_SIZE(options[2]);
 if (w_size < DEFLATE_MIN_SIZE || w_size > DEFLATE_MAX_SIZE)
  return ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 state->w_size = w_size;
 state->strm.next_out = ((void*)0);
 state->strm.workspace = kmalloc(zlib_inflate_workspacesize(),
     GFP_KERNEL|__GFP_REPEAT);
 if (state->strm.workspace == ((void*)0))
  goto out_free;

 if (zlib_inflateInit2(&state->strm, -w_size) != Z_OK)
  goto out_free;
 return (void *) state;

out_free:
 z_decomp_free(state);
 return ((void*)0);
}
