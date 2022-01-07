
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int REQUEST_REGISTER ;
 int nc_vendor_read (struct usbnet*,int ,int ,int *) ;

__attribute__((used)) static inline int
nc_register_read(struct usbnet *dev, u8 regnum, u16 *retval_ptr)
{
 return nc_vendor_read(dev, REQUEST_REGISTER, regnum, retval_ptr);
}
