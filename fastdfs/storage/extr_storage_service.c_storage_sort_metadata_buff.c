
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSMetaData ;


 int fdfs_pack_metadata (int *,int,char*,int*) ;
 int * fdfs_split_metadata (char*,int*,int*) ;
 int free (int *) ;
 int metadata_cmp_by_name ;
 int qsort (void*,int,int,int ) ;

__attribute__((used)) static int storage_sort_metadata_buff(char *meta_buff, const int meta_size)
{
 FDFSMetaData *meta_list;
 int meta_count;
 int meta_bytes;
 int result;

 meta_list = fdfs_split_metadata(meta_buff, &meta_count, &result);
 if (meta_list == ((void*)0))
 {
  return result;
 }

 qsort((void *)meta_list, meta_count, sizeof(FDFSMetaData), metadata_cmp_by_name);


 fdfs_pack_metadata(meta_list, meta_count, meta_buff, &meta_bytes);
 free(meta_list);

 return 0;
}
