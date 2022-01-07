
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int DEB_D (char*) ;
 int saa7146_start_preview (void*) ;
 int saa7146_stop_preview (void*) ;

__attribute__((used)) static int vidioc_overlay(struct file *file, void *fh, unsigned int on)
{
 int err;

 DEB_D(("VIDIOC_OVERLAY on:%d\n", on));
 if (on)
  err = saa7146_start_preview(fh);
 else
  err = saa7146_stop_preview(fh);
 return err;
}
