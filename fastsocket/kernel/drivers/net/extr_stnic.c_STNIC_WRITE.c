
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vhalf ;
typedef int half ;
typedef scalar_t__ byte ;


 scalar_t__ PA_83902 ;
 int STNIC_DELAY () ;

__attribute__((used)) static inline void
STNIC_WRITE (int reg, byte val)
{
  *(vhalf *) (PA_83902 + ((reg) << 1)) = ((half) (val) << 8);
  STNIC_DELAY ();
}
