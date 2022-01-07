
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_crypt_request {int dummy; } ;
struct crypt_config {int dmreq_start; } ;
struct ablkcipher_request {int dummy; } ;



__attribute__((used)) static struct dm_crypt_request *dmreq_of_req(struct crypt_config *cc,
          struct ablkcipher_request *req)
{
 return (struct dm_crypt_request *)((char *)req + cc->dmreq_start);
}
