
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct e752x_error_info {int buf_ferr; int buf_nerr; } ;


 int membuf_error (int,int*,int) ;

__attribute__((used)) static void e752x_check_membuf(struct e752x_error_info *info,
   int *error_found, int handle_error)
{
 u8 stat8;

 stat8 = info->buf_ferr;

 if (stat8 & 0x0f) {
  stat8 &= 0x0f;
  membuf_error(stat8, error_found, handle_error);
 }

 stat8 = info->buf_nerr;

 if (stat8 & 0x0f) {
  stat8 &= 0x0f;
  membuf_error(stat8, error_found, handle_error);
 }
}
