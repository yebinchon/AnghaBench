
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIOMAJOR_SUBTYPE_SHIFT ;
 int VIO_MAX_SUBTYPES ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 void* event_buffer ;
 int * event_buffer_available ;

void *vio_get_event_buffer(int subtype)
{
 subtype = subtype >> VIOMAJOR_SUBTYPE_SHIFT;
 if ((subtype < 0) || (subtype >= VIO_MAX_SUBTYPES))
  return ((void*)0);

 if (atomic_dec_if_positive(&event_buffer_available[subtype]) == 0)
  return &event_buffer[subtype * 256];
 else
  return ((void*)0);
}
