
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int buff ;


 int FDFS_FILENAME_BASE64_LENGTH ;
 int FDFS_LOGIC_FILE_PATH_LEN ;
 int const FDFS_TRUNK_LOGIC_FILENAME_LENGTH ;
 int IS_TRUNK_FILE (int ) ;
 int base64_decode_auto (int *,char*,int ,char*,int*) ;
 int buff2long (char*) ;
 int g_fdfs_base64_context ;
 int memset (char*,int ,int) ;

bool fdfs_is_trunk_file(const char *remote_filename, const int filename_len)
{
 int buff_len;
 char buff[64];
 int64_t file_size;

 if (filename_len != FDFS_TRUNK_LOGIC_FILENAME_LENGTH)
 {
  return 0;
 }

 memset(buff, 0, sizeof(buff));
 base64_decode_auto(&g_fdfs_base64_context, (char *)remote_filename + FDFS_LOGIC_FILE_PATH_LEN, FDFS_FILENAME_BASE64_LENGTH, buff, &buff_len);



 file_size = buff2long(buff + sizeof(int) * 2);
 return IS_TRUNK_FILE(file_size);
}
