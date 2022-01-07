
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buff ;
struct TYPE_3__ {int size; int offset; int id; } ;
typedef TYPE_1__ FDFSTrunkFileInfo ;


 int base64_encode_ex (int *,char*,int,char*,int*,int) ;
 int g_fdfs_base64_context ;
 int int2buff (int ,char*) ;

void trunk_file_info_encode(const FDFSTrunkFileInfo *pTrunkFile, char *str)
{
 char buff[sizeof(int) * 3];
 int len;

 int2buff(pTrunkFile->id, buff);
 int2buff(pTrunkFile->offset, buff + sizeof(int));
 int2buff(pTrunkFile->size, buff + sizeof(int) * 2);
 base64_encode_ex(&g_fdfs_base64_context, buff, sizeof(buff), str, &len, 0);

}
