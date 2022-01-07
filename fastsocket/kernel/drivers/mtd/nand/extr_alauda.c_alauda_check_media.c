
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct alauda {int dummy; } ;


 int EIO ;
 int alauda_get_media_status (struct alauda*,int*) ;
 int alauda_init_media (struct alauda*) ;

__attribute__((used)) static int alauda_check_media(struct alauda *al)
{
 u8 buf[2], *b0 = buf, *b1 = buf+1;
 int err;

 err = alauda_get_media_status(al, buf);
 if (err < 0)
  return err;

 if ((*b1 & 0x01) == 0) {

  return -EIO;
 }
 if ((*b0 & 0x80) || ((*b0 & 0x1F) == 0x10)) {

  return -EIO;
 }
 if (*b0 & 0x08) {

  return alauda_init_media(al);
 }
 return 0;
}
