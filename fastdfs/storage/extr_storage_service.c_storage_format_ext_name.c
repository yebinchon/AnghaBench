
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDFS_FILE_EXT_NAME_MAX_LEN ;
 double RAND_MAX ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ rand () ;
 int strlen (char const*) ;

__attribute__((used)) static void storage_format_ext_name(const char *file_ext_name,
  char *szFormattedExt)
{
 int i;
 int ext_name_len;
 int pad_len;
 char *p;

 ext_name_len = strlen(file_ext_name);
 if (ext_name_len == 0)
 {
  pad_len = FDFS_FILE_EXT_NAME_MAX_LEN + 1;
 }
 else
 {
  pad_len = FDFS_FILE_EXT_NAME_MAX_LEN - ext_name_len;
 }

 p = szFormattedExt;
 for (i=0; i<pad_len; i++)
 {
  *p++ = '0' + (int)(10.0 * (double)rand() / RAND_MAX);
 }

 if (ext_name_len > 0)
 {
  *p++ = '.';
  memcpy(p, file_ext_name, ext_name_len);
  p += ext_name_len;
 }
 *p = '\0';
}
