
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ sock; } ;
typedef TYPE_1__ ConnectionInfo ;


 int CHECK_CONNECTION (TYPE_1__*,TYPE_1__*,int,int) ;
 int tracker_close_connection_ex (TYPE_1__*,int) ;
 TYPE_1__* tracker_make_connection (TYPE_1__*,int*) ;
 int tracker_query_storage_store_with_group (TYPE_1__*,char*,TYPE_1__*,int*) ;
 int tracker_query_storage_store_without_group (TYPE_1__*,TYPE_1__*,char*,int*) ;

__attribute__((used)) static int storage_get_upload_connection(ConnectionInfo *pTrackerServer, ConnectionInfo **ppStorageServer, char *group_name, ConnectionInfo *pNewStorage, int *store_path_index, bool *new_connection)



{
 int result;
 bool new_tracker_connection;
 ConnectionInfo *pNewTracker;

 if (*ppStorageServer == ((void*)0))
 {
  CHECK_CONNECTION(pTrackerServer, pNewTracker, result, new_tracker_connection);

  if (*group_name == '\0')
  {
   result = tracker_query_storage_store_without_group( pNewTracker, pNewStorage, group_name, store_path_index);


  }
  else
  {
   result = tracker_query_storage_store_with_group( pNewTracker, group_name, pNewStorage, store_path_index);


  }

  if (new_tracker_connection)
  {
   tracker_close_connection_ex(pNewTracker, result != 0);
  }

  if (result != 0)
  {
   return result;
  }

  if ((*ppStorageServer=tracker_make_connection(pNewStorage,
   &result)) == ((void*)0))
  {
   return result;
  }

  *new_connection = 1;
 }
 else
 {
  if ((*ppStorageServer)->sock >= 0)
  {
   *new_connection = 0;
  }
  else
  {
   if ((*ppStorageServer=tracker_make_connection(
    *ppStorageServer, &result)) == ((void*)0))
   {
    return result;
   }

   *new_connection = 1;
  }
 }

 return 0;
}
