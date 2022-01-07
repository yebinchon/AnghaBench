
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct ppp_mppe_state {int keylen; int sha1_digest; int sha1; int session_key; int master_key; } ;
struct hash_desc {scalar_t__ flags; int tfm; } ;
struct TYPE_2__ {int sha_pad2; int sha_pad1; } ;


 int crypto_hash_digest (struct hash_desc*,struct scatterlist*,unsigned int,int ) ;
 unsigned int setup_sg (struct scatterlist*,int ,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 TYPE_1__* sha_pad ;

__attribute__((used)) static void get_new_key_from_sha(struct ppp_mppe_state * state)
{
 struct hash_desc desc;
 struct scatterlist sg[4];
 unsigned int nbytes;

 sg_init_table(sg, 4);

 nbytes = setup_sg(&sg[0], state->master_key, state->keylen);
 nbytes += setup_sg(&sg[1], sha_pad->sha_pad1,
      sizeof(sha_pad->sha_pad1));
 nbytes += setup_sg(&sg[2], state->session_key, state->keylen);
 nbytes += setup_sg(&sg[3], sha_pad->sha_pad2,
      sizeof(sha_pad->sha_pad2));

 desc.tfm = state->sha1;
 desc.flags = 0;

 crypto_hash_digest(&desc, sg, nbytes, state->sha1_digest);
}
