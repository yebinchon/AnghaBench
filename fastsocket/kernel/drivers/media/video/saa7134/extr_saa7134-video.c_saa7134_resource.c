
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_fh {scalar_t__ type; } ;


 int BUG () ;
 int RESOURCE_VBI ;
 int RESOURCE_VIDEO ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;

__attribute__((used)) static int saa7134_resource(struct saa7134_fh *fh)
{
 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  return RESOURCE_VIDEO;

 if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE)
  return RESOURCE_VBI;

 BUG();
 return 0;
}
