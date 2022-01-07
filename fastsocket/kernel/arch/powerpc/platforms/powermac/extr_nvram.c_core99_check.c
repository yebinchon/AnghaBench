
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ signature; scalar_t__ cksum; } ;
struct core99_header {scalar_t__ adler; int generation; TYPE_1__ hdr; } ;


 scalar_t__ CORE99_SIGNATURE ;
 int DBG (char*) ;
 scalar_t__ chrp_checksum (TYPE_1__*) ;
 scalar_t__ core99_calc_adler (int *) ;

__attribute__((used)) static u32 core99_check(u8* datas)
{
 struct core99_header* hdr99 = (struct core99_header*)datas;

 if (hdr99->hdr.signature != CORE99_SIGNATURE) {
  DBG("Invalid signature\n");
  return 0;
 }
 if (hdr99->hdr.cksum != chrp_checksum(&hdr99->hdr)) {
  DBG("Invalid checksum\n");
  return 0;
 }
 if (hdr99->adler != core99_calc_adler(datas)) {
  DBG("Invalid adler\n");
  return 0;
 }
 return hdr99->generation;
}
