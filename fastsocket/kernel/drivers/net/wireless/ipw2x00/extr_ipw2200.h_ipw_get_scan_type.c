
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipw_scan_request_ext {int* scan_type; } ;



__attribute__((used)) static inline u8 ipw_get_scan_type(struct ipw_scan_request_ext *scan, u8 index)
{
 if (index % 2)
  return scan->scan_type[index / 2] & 0x0F;
 else
  return (scan->scan_type[index / 2] & 0xF0) >> 4;
}
