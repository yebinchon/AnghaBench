
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB ;
 int sprintf (char*,char*,int const,...) ;

const char *fdfs_storage_reserved_space_to_string_ex(const bool flag, const int space_mb, const int total_mb, const double space_ratio, char *buff)


{
 if (flag == TRACKER_STORAGE_RESERVED_SPACE_FLAG_MB)
 {
  sprintf(buff, "%d MB", space_mb);
 }
 else
 {
  sprintf(buff, "%d MB(%.2f%%)", (int)(total_mb * space_ratio), 100.00 * space_ratio);

 }

 return buff;
}
