
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fwheader {int datalength; int dnldcmd; } ;




 int lbs_deb_fw (char*) ;
 int lbs_pr_err (char*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int check_fwfile_format(const uint8_t *data, uint32_t totlen)
{
 uint32_t bincmd, exit;
 uint32_t blksize, offset, len;
 int ret;

 ret = 1;
 exit = len = 0;

 do {
  struct fwheader *fwh = (void *)data;

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
  lbs_pr_err("firmware file format check FAIL\n");
 else
  lbs_deb_fw("firmware file format check PASS\n");

 return ret;
}
