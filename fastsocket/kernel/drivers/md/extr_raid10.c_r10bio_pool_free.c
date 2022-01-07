
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

__attribute__((used)) static void r10bio_pool_free(void *r10_bio, void *data)
{
 kfree(r10_bio);
}
