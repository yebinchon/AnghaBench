
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entropy_store {int dummy; } ;


 int mix_pool_bytes_extract (struct entropy_store*,void const*,int,int *) ;

__attribute__((used)) static void mix_pool_bytes(struct entropy_store *r, const void *in, int bytes)
{
       mix_pool_bytes_extract(r, in, bytes, ((void*)0));
}
