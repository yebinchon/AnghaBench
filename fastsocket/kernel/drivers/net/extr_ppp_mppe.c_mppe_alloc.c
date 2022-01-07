
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppp_mppe_state {unsigned char* master_key; unsigned char* session_key; int * arc4; int * sha1; struct ppp_mppe_state* sha1_digest; } ;


 int CILEN_MPPE ;
 unsigned char CI_MPPE ;
 int CRYPTO_ALG_ASYNC ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 unsigned int MPPE_MAX_KEY_LEN ;
 int * crypto_alloc_blkcipher (char*,int ,int ) ;
 int * crypto_alloc_hash (char*,int ,int ) ;
 int crypto_free_blkcipher (int *) ;
 int crypto_free_hash (int *) ;
 unsigned int crypto_hash_digestsize (int *) ;
 int kfree (struct ppp_mppe_state*) ;
 struct ppp_mppe_state* kmalloc (unsigned int,int ) ;
 struct ppp_mppe_state* kzalloc (int,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void *mppe_alloc(unsigned char *options, int optlen)
{
 struct ppp_mppe_state *state;
 unsigned int digestsize;

 if (optlen != CILEN_MPPE + sizeof(state->master_key)
     || options[0] != CI_MPPE || options[1] != CILEN_MPPE)
  goto out;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state == ((void*)0))
  goto out;


 state->arc4 = crypto_alloc_blkcipher("ecb(arc4)", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(state->arc4)) {
  state->arc4 = ((void*)0);
  goto out_free;
 }

 state->sha1 = crypto_alloc_hash("sha1", 0, CRYPTO_ALG_ASYNC);
 if (IS_ERR(state->sha1)) {
  state->sha1 = ((void*)0);
  goto out_free;
 }

 digestsize = crypto_hash_digestsize(state->sha1);
 if (digestsize < MPPE_MAX_KEY_LEN)
  goto out_free;

 state->sha1_digest = kmalloc(digestsize, GFP_KERNEL);
 if (!state->sha1_digest)
  goto out_free;


 memcpy(state->master_key, &options[CILEN_MPPE],
        sizeof(state->master_key));
 memcpy(state->session_key, state->master_key,
        sizeof(state->master_key));






 return (void *)state;

 out_free:
     if (state->sha1_digest)
  kfree(state->sha1_digest);
     if (state->sha1)
  crypto_free_hash(state->sha1);
     if (state->arc4)
  crypto_free_blkcipher(state->arc4);
     kfree(state);
 out:
 return ((void*)0);
}
