
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int workspace ;
struct entropy_store {scalar_t__ pool; TYPE_1__* poolinfo; } ;
typedef int hash ;
typedef int extract ;
typedef int __u8 ;
typedef int __u32 ;
struct TYPE_2__ {int poolwords; } ;


 int EXTRACT_SIZE ;
 int SHA_WORKSPACE_WORDS ;
 int memcpy (int *,int *,int ) ;
 int memset (int *,int ,int) ;
 int mix_pool_bytes_extract (struct entropy_store*,int *,int,int *) ;
 int rol32 (int ,int) ;
 int sha_init (int *) ;
 int sha_transform (int *,int *,int *) ;

__attribute__((used)) static void extract_buf(struct entropy_store *r, __u8 *out)
{
 int i;
 __u32 hash[5], workspace[SHA_WORKSPACE_WORDS];
 __u8 extract[64];


 sha_init(hash);
 for (i = 0; i < r->poolinfo->poolwords; i += 16)
  sha_transform(hash, (__u8 *)(r->pool + i), workspace);
 mix_pool_bytes_extract(r, hash, sizeof(hash), extract);





 sha_transform(hash, extract, workspace);
 memset(extract, 0, sizeof(extract));
 memset(workspace, 0, sizeof(workspace));






 hash[0] ^= hash[3];
 hash[1] ^= hash[4];
 hash[2] ^= rol32(hash[2], 16);
 memcpy(out, hash, EXTRACT_SIZE);
 memset(hash, 0, sizeof(hash));
}
