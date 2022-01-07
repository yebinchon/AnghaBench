
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
struct dos_header {int track; } ;


 int dos_crc (int *,int,int,int) ;

__attribute__((used)) static inline ushort dos_hdr_crc (struct dos_header *hdr)
{
 return dos_crc(&(hdr->track), 0xb2, 0x30, 3);
}
