
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FIRST_DEVICE_VECTOR ;
 unsigned int FIRST_EXTERNAL_VECTOR ;

__attribute__((used)) static inline unsigned int vmi_get_timer_vector(void)
{



 return FIRST_EXTERNAL_VECTOR;

}
