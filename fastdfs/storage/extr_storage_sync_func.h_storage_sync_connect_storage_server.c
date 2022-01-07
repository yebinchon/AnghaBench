
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FDFSStorageBrief ;
typedef int ConnectionInfo ;


 int storage_sync_connect_storage_server_ex (int *,int *,int*) ;

__attribute__((used)) static inline void storage_sync_connect_storage_server(
        FDFSStorageBrief *pStorage, ConnectionInfo *conn)
{
    bool check_flag = 1;
    storage_sync_connect_storage_server_ex(pStorage,
            conn, &check_flag);
}
