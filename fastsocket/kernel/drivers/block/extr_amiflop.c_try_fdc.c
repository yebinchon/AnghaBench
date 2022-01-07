
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdc_busy ;

__attribute__((used)) static inline int try_fdc(int drive)
{
 drive &= 3;
 return ((fdc_busy < 0) || (fdc_busy == drive));
}
