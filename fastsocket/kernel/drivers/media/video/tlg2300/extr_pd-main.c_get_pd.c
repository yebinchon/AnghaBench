
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct poseidon {int dummy; } ;


 struct poseidon* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static inline struct poseidon *get_pd(struct usb_interface *intf)
{
 return usb_get_intfdata(intf);
}
