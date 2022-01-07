
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDFS_ID_TYPE_IP_ADDRESS ;
 int FDFS_ID_TYPE_SERVER_ID ;
 int const FDFS_MAX_SERVER_ID ;

int fdfs_get_server_id_type(const int id)
{
  if (id > 0 && id <= FDFS_MAX_SERVER_ID)
  {
    return FDFS_ID_TYPE_SERVER_ID;
  }
  else
  {
    return FDFS_ID_TYPE_IP_ADDRESS;
  }
}
