
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_mppe_state {scalar_t__ arc4; scalar_t__ sha1; struct ppp_mppe_state* sha1_digest; } ;


 int crypto_free_blkcipher (scalar_t__) ;
 int crypto_free_hash (scalar_t__) ;
 int kfree (struct ppp_mppe_state*) ;

__attribute__((used)) static void mppe_free(void *arg)
{
 struct ppp_mppe_state *state = (struct ppp_mppe_state *) arg;
 if (state) {
     if (state->sha1_digest)
  kfree(state->sha1_digest);
     if (state->sha1)
  crypto_free_hash(state->sha1);
     if (state->arc4)
  crypto_free_blkcipher(state->arc4);
     kfree(state);
 }
}
