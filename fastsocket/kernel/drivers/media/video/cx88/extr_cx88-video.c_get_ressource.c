
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx8800_fh {int type; } ;


 int BUG () ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO ;



__attribute__((used)) static int get_ressource(struct cx8800_fh *fh)
{
 switch (fh->type) {
 case 128:
  return RESOURCE_VIDEO;
 case 129:
  return RESOURCE_VBI;
 default:
  BUG();
  return 0;
 }
}
