
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vio_event_handler_t ;


 int EBUSY ;
 int EINVAL ;
 int VIOMAJOR_SUBTYPE_SHIFT ;
 int VIO_MAX_SUBTYPES ;
 int ** vio_handler ;

int vio_setHandler(int subtype, vio_event_handler_t *beh)
{
 subtype = subtype >> VIOMAJOR_SUBTYPE_SHIFT;
 if ((subtype < 0) || (subtype >= VIO_MAX_SUBTYPES))
  return -EINVAL;
 if (vio_handler[subtype] != ((void*)0))
  return -EBUSY;
 vio_handler[subtype] = beh;
 return 0;
}
