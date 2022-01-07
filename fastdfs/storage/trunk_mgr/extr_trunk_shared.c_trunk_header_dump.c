
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file_type; int alloc_size; int file_size; int crc32; int mtime; char* formatted_ext_name; } ;
typedef TYPE_1__ FDFSTrunkHeader ;


 int snprintf (char*,int const,char*,int,int,int,int,int,int,char*) ;
 scalar_t__ strlen (char*) ;

char *trunk_header_dump(const FDFSTrunkHeader *pTrunkHeader, char *buff, const int buff_size)

{
 snprintf(buff, buff_size, "file_type=%d, " "alloc_size=%d, " "file_size=%d, " "crc32=%d, " "mtime=%d, " "ext_name(%d)=%s", pTrunkHeader->file_type, pTrunkHeader->alloc_size, pTrunkHeader->file_size, pTrunkHeader->crc32, pTrunkHeader->mtime, (int)strlen(pTrunkHeader->formatted_ext_name), pTrunkHeader->formatted_ext_name);
 return buff;
}
