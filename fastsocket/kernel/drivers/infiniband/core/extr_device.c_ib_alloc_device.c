
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 struct ib_device* kzalloc (size_t,int ) ;

struct ib_device *ib_alloc_device(size_t size)
{
 BUG_ON(size < sizeof (struct ib_device));

 return kzalloc(size, GFP_KERNEL);
}
