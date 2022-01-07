
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fwheader {int datalength; int dnldcmd; } ;




 int lbtf_deb_fw (char*) ;
 int le32_to_cpu (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int check_fwfile_format(const u8 *data, u32 totlen)
{
 u32 bincmd, exit;
 u32 blksize, offset, len;
 int ret;

 ret = 1;
 exit = len = 0;

 do {
  struct fwheader *fwh = (void *) data;

  bincmd = le32_to_cpu(fwh->dnldcmd);
  blksize = le32_to_cpu(fwh->datalength);
  switch (bincmd) {
  case 129:
   offset = sizeof(struct fwheader) + blksize;
   data += offset;
   len += offset;
   if (len >= totlen)
    exit = 1;
   break;
  case 128:
   exit = 1;
   ret = 0;
   break;
  default:
   exit = 1;
   break;
  }
 } while (!exit);

 if (ret)
  pr_err("firmware file format check FAIL\n");
 else
  lbtf_deb_fw("firmware file format check PASS\n");

 return ret;
}
