
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int size; int x; int y; } ;
struct TYPE_6__ {int size; int x; int y; } ;
struct TYPE_5__ {int x; int y; } ;
struct pwc_device {int pixfmt; unsigned char* image_data; TYPE_4__ view; TYPE_3__* images; TYPE_2__ image; TYPE_1__ offset; } ;
struct TYPE_7__ {int offset; } ;


 int BLACK_U ;
 int BLACK_V ;
 int BLACK_Y ;



 int memset (unsigned char*,int ,int) ;
 int pwc_mbufs ;

__attribute__((used)) static void pwc_set_image_buffer_size(struct pwc_device *pdev)
{
 int i, factor = 0;


 switch (pdev->pixfmt) {
 case 128:
  factor = 6;
  break;
 case 130:
 case 129:
  factor = 6;
  break;
 }


 pdev->image.size = pdev->image.x * pdev->image.y * factor / 4;
 pdev->view.size = pdev->view.x * pdev->view.y * factor / 4;






 pdev->offset.x = ((pdev->view.x - pdev->image.x) / 2) & 0xFFFC;
 pdev->offset.y = ((pdev->view.y - pdev->image.y) / 2) & 0xFFFE;


 for (i = 0; i < pwc_mbufs; i++) {
  unsigned char *p = pdev->image_data + pdev->images[i].offset;
  memset(p, BLACK_Y, pdev->view.x * pdev->view.y);
  p += pdev->view.x * pdev->view.y;
  memset(p, BLACK_U, pdev->view.x * pdev->view.y/4);
  p += pdev->view.x * pdev->view.y/4;
  memset(p, BLACK_V, pdev->view.x * pdev->view.y/4);
 }
}
