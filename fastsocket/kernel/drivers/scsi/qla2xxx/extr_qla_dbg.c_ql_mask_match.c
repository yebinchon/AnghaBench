
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int QL_DBG_DEFAULT1_MASK ;
 int ql2xextended_error_logging ;

__attribute__((used)) static inline int
ql_mask_match(uint32_t level)
{
 if (ql2xextended_error_logging == 1)
  ql2xextended_error_logging = QL_DBG_DEFAULT1_MASK;
 return (level & ql2xextended_error_logging) == level;
}
