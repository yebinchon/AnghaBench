
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_device {size_t fill_image; scalar_t__* image_used; } ;


 int pwc_mbufs ;

void pwc_next_image(struct pwc_device *pdev)
{
 pdev->image_used[pdev->fill_image] = 0;
 pdev->fill_image = (pdev->fill_image + 1) % pwc_mbufs;
}
