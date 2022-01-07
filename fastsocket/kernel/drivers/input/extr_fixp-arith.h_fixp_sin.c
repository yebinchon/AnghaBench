
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixp_t ;


 int fixp_cos (unsigned int) ;

__attribute__((used)) static inline fixp_t fixp_sin(unsigned int degrees)
{
 return -fixp_cos(degrees + 90);
}
