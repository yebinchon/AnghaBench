
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool has_err(unsigned int trap)
{
 return (trap == 8 || (trap >= 10 && trap <= 14) || trap == 17);
}
