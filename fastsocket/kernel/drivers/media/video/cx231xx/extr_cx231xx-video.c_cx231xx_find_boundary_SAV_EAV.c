
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ cx231xx_find_next_SAV_EAV (scalar_t__*,int,scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;

u8 cx231xx_find_boundary_SAV_EAV(u8 *p_buffer, u8 *partial_buf,
     u32 *p_bytes_used)
{
 u32 bytes_used;
 u8 boundary_bytes[8];
 u8 sav_eav = 0;

 *p_bytes_used = 0;




 memcpy(boundary_bytes, partial_buf, 4);
 memcpy(boundary_bytes + 4, p_buffer, 4);


 sav_eav = cx231xx_find_next_SAV_EAV((u8 *)&boundary_bytes, 8,
         &bytes_used);

 if (sav_eav) {


  *p_bytes_used = bytes_used - 4;
 }

 return sav_eav;
}
