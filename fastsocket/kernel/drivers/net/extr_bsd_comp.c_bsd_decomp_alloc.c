
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* bsd_alloc (unsigned char*,int,int) ;

__attribute__((used)) static void *bsd_decomp_alloc (unsigned char *options, int opt_len)
  {
    return bsd_alloc (options, opt_len, 1);
  }
