
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int channel_active; } ;


 int __test_and_set_bit (int,int *) ;

__attribute__((used)) static int alloc_channel(struct firedtv *fdtv)
{
 int i;

 for (i = 0; i < 16; i++)
  if (!__test_and_set_bit(i, &fdtv->channel_active))
   break;
 return i;
}
