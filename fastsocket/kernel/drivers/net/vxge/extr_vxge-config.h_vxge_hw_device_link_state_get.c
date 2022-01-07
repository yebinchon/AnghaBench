
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __vxge_hw_device {int link_state; } ;
typedef enum vxge_hw_device_link_state { ____Placeholder_vxge_hw_device_link_state } vxge_hw_device_link_state ;



__attribute__((used)) static inline
enum vxge_hw_device_link_state vxge_hw_device_link_state_get(
 struct __vxge_hw_device *devh)
{
 return devh->link_state;
}
