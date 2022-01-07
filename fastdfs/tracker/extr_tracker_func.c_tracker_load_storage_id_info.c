
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IniContext ;


 int FDFS_ID_TYPE_IP_ADDRESS ;
 int FDFS_ID_TYPE_SERVER_ID ;
 int fdfs_load_storage_ids_from_file (char const*,int *) ;
 int g_id_type_in_filename ;
 int g_use_storage_id ;
 int iniGetBoolValue (int *,char*,int *,int) ;
 char* iniGetStrValue (int *,char*,int *) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static int tracker_load_storage_id_info(const char *config_filename, IniContext *pItemContext)

{
 char *pIdType;

 g_use_storage_id = iniGetBoolValue(((void*)0), "use_storage_id", pItemContext, 0);

 if (!g_use_storage_id)
 {
  return 0;
 }

 pIdType = iniGetStrValue(((void*)0), "id_type_in_filename", pItemContext);

 if (pIdType != ((void*)0) && strcasecmp(pIdType, "id") == 0)
 {
  g_id_type_in_filename = FDFS_ID_TYPE_SERVER_ID;
 }
 else
 {
  g_id_type_in_filename = FDFS_ID_TYPE_IP_ADDRESS;
 }

 return fdfs_load_storage_ids_from_file(config_filename, pItemContext);
}
