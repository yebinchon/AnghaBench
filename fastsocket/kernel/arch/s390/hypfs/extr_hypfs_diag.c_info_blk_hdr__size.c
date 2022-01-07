
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x_info_blk_hdr {int dummy; } ;
struct info_blk_hdr {int dummy; } ;
typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;


 int INFO_SIMPLE ;

__attribute__((used)) static inline int info_blk_hdr__size(enum diag204_format type)
{
 if (type == INFO_SIMPLE)
  return sizeof(struct info_blk_hdr);
 else
  return sizeof(struct x_info_blk_hdr);
}
