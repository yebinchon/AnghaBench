
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEVEL_STRIDE ;

__attribute__((used)) static inline int agaw_to_width(int agaw)
{
 return 30 + agaw * LEVEL_STRIDE;

}
