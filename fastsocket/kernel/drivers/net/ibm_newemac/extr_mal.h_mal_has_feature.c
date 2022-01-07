
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mal_instance {unsigned long features; } ;


 unsigned long MAL_FTRS_ALWAYS ;
 unsigned long MAL_FTRS_POSSIBLE ;

__attribute__((used)) static inline int mal_has_feature(struct mal_instance *dev,
  unsigned long feature)
{
 return (MAL_FTRS_ALWAYS & feature) ||
  (MAL_FTRS_POSSIBLE & dev->features & feature);
}
