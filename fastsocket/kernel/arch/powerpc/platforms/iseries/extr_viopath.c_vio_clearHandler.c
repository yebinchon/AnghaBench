
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EINVAL ;
 int VIOMAJOR_SUBTYPE_SHIFT ;
 int VIO_MAX_SUBTYPES ;
 int ** vio_handler ;

int vio_clearHandler(int subtype)
{
 subtype = subtype >> VIOMAJOR_SUBTYPE_SHIFT;
 if ((subtype < 0) || (subtype >= VIO_MAX_SUBTYPES))
  return -EINVAL;
 if (vio_handler[subtype] == ((void*)0))
  return -EAGAIN;
 vio_handler[subtype] = ((void*)0);
 return 0;
}
