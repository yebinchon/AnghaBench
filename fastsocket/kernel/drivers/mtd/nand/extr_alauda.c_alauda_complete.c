
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct completion* context; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void alauda_complete(struct urb *urb)
{
 struct completion *comp = urb->context;

 if (comp)
  complete(comp);
}
