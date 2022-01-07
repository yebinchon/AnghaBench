
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; int bytes; } ;
typedef int FILE ;


 int BUFF_SIZE ;
 int FILE_TYPE_COUNT ;
 double RAND_MAX ;
 int SRAND_SEED ;
 char* STRERROR (int) ;
 int errno ;
 int fclose (int *) ;
 TYPE_1__* files ;
 int * fopen (char*,char*) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int memset (unsigned char*,int,int) ;
 int printf (char*,...) ;
 scalar_t__ rand () ;
 int srand (int ) ;

int main()
{

 int i;
 int k;
 int loop;
 FILE *fp;
 unsigned char buff[(1 * 1024)];
 unsigned char *p;
 unsigned char *pEnd;

 srand(SRAND_SEED);
 pEnd = buff + (1 * 1024);
 for (i=0; i<FILE_TYPE_COUNT; i++)
 {
  fp = fopen(files[i].filename, "wb");
  if (fp == ((void*)0))
  {
   printf("open file %s fail, errno: %d, error info: %s\n",
    files[i].filename, errno, STRERROR(errno));
   return 1;
  }

  loop = files[i].bytes / (1 * 1024);
  for (k=0; k<loop-1; k++)
  {
   for (p=buff; p<pEnd; p++)
   {
    *p = (int)(255 * ((double)rand() / RAND_MAX));
   }

   if (fwrite(buff, (1 * 1024), 1, fp) != 1)
   {
    printf("write file %s fail, errno: %d, error info: %s\n",
     files[i].filename, errno, STRERROR(errno));
          fclose(fp);
    return 1;
   }
  }

  memset(buff, 0xFF, (1 * 1024));
  if (fwrite(buff, (1 * 1024), 1, fp) != 1)
  {
   printf("write file %s fail, errno: %d, error info: %s\n",
    files[i].filename, errno, STRERROR(errno));
      fclose(fp);
   return 1;
  }

  fclose(fp);
 }

 printf("done.\n");

 return 0;
}
