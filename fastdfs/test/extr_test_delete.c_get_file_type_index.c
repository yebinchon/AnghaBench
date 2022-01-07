
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const bytes; } ;
typedef TYPE_1__ TestFileInfo ;


 int FILE_TYPE_COUNT ;
 TYPE_1__* files ;

__attribute__((used)) static int get_file_type_index(const int file_bytes)
{
 TestFileInfo *pFile;
 TestFileInfo *pEnd;

 pEnd = files + FILE_TYPE_COUNT;
 for (pFile=files; pFile<pEnd; pFile++)
 {
  if (file_bytes == pFile->bytes)
  {
   return pFile - files;
  }
 }

 return -1;
}
