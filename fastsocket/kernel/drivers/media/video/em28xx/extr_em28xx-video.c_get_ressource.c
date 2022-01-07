
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_fh {int type; } ;


 int BUG () ;
 int EM28XX_RESOURCE_VBI ;
 int EM28XX_RESOURCE_VIDEO ;



__attribute__((used)) static int get_ressource(struct em28xx_fh *fh)
{
 switch (fh->type) {
 case 128:
  return EM28XX_RESOURCE_VIDEO;
 case 129:
  return EM28XX_RESOURCE_VBI;
 default:
  BUG();
  return 0;
 }
}
