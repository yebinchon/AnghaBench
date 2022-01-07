
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; } ;


 int err (char*,scalar_t__) ;

__attribute__((used)) static void ks959_speed_irq(struct urb *urb)
{

 if (urb->status != 0) {
  err("ks959_speed_irq: urb asynchronously failed - %d",
      urb->status);
 }
}
