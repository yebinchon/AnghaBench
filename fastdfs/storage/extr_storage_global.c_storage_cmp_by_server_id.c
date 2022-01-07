
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ server; } ;
typedef TYPE_2__ FDFSStorageServer ;


 int strcmp (int ,int ) ;

int storage_cmp_by_server_id(const void *p1, const void *p2)
{
 return strcmp((*((FDFSStorageServer **)p1))->server.id,
  (*((FDFSStorageServer **)p2))->server.id);
}
