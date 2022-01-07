
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPLIT_FILENAME_BODY (char const*,int*,char*,int,int) ;

int storage_split_filename_ex(const char *logic_filename, int *filename_len, char *true_filename, int *store_path_index)

{
 SPLIT_FILENAME_BODY(logic_filename, filename_len, true_filename, *store_path_index, 1);


 return 0;
}
