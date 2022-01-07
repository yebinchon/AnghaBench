
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_scsi_args {int dummy; } ;
typedef int pages ;


 int memcpy (int*,int const*,int) ;

__attribute__((used)) static unsigned int ata_scsiop_inq_00(struct ata_scsi_args *args, u8 *rbuf)
{
 const u8 pages[] = {
  0x00,
  0x80,
  0x83,
  0x89,
  0xb0,
  0xb1,
  0xb2,
 };

 rbuf[3] = sizeof(pages);
 memcpy(rbuf + 4, pages, sizeof(pages));
 return 0;
}
