
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {int * decompress_data; } ;
struct pwc_dec23_private {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;

int pwc_dec23_alloc(struct pwc_device *pwc)
{
 pwc->decompress_data = kmalloc(sizeof(struct pwc_dec23_private), GFP_KERNEL);
 if (pwc->decompress_data == ((void*)0))
  return -ENOMEM;
 return 0;
}
