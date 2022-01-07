
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gef_pic_mask (unsigned int) ;

__attribute__((used)) static void gef_pic_mask_ack(unsigned int virq)
{



 gef_pic_mask(virq);
}
