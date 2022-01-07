
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv_fh {int type; } ;


 int BUG () ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO_STREAM ;



__attribute__((used)) static int bttv_resource(struct bttv_fh *fh)
{
 int res = 0;

 switch (fh->type) {
 case 128:
  res = RESOURCE_VIDEO_STREAM;
  break;
 case 129:
  res = RESOURCE_VBI;
  break;
 default:
  BUG();
 }
 return res;
}
