
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dword ;


 int * diva_xdiLoadFileFile ;
 scalar_t__ diva_xdiLoadFileLength ;

void *xdiLoadFile(char *FileName, dword *FileLength,
    unsigned long lim)
{
 void *ret = diva_xdiLoadFileFile;

 if (FileLength) {
  *FileLength = diva_xdiLoadFileLength;
 }
 diva_xdiLoadFileFile = ((void*)0);
 diva_xdiLoadFileLength = 0;

 return (ret);
}
