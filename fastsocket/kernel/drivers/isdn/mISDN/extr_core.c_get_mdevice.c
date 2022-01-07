
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mISDNdevice {int dummy; } ;


 int _get_mdevice ;
 int class_find_device (int *,int *,int *,int ) ;
 struct mISDNdevice* dev_to_mISDN (int ) ;
 int mISDN_class ;

struct mISDNdevice
*get_mdevice(u_int id)
{
 return dev_to_mISDN(class_find_device(&mISDN_class, ((void*)0), &id,
  _get_mdevice));
}
