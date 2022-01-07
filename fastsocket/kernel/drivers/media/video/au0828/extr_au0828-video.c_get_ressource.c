
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct au0828_fh {int type; } ;


 int AU0828_RESOURCE_VBI ;
 int AU0828_RESOURCE_VIDEO ;
 int BUG () ;



__attribute__((used)) static int get_ressource(struct au0828_fh *fh)
{
 switch (fh->type) {
 case 128:
  return AU0828_RESOURCE_VIDEO;
 case 129:
  return AU0828_RESOURCE_VBI;
 default:
  BUG();
  return 0;
 }
}
