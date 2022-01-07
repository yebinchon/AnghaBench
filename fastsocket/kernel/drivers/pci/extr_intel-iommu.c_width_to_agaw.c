
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEVEL_STRIDE ;

__attribute__((used)) static inline int width_to_agaw(int width)
{
 return (width - 30) / LEVEL_STRIDE;
}
