
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* file; } ;
struct ubd {char* file; TYPE_1__ cow; } ;
typedef int __u64 ;


 int os_file_size (char*,int *) ;

__attribute__((used)) static inline int ubd_file_size(struct ubd *ubd_dev, __u64 *size_out)
{
 char *file;

 file = ubd_dev->cow.file ? ubd_dev->cow.file : ubd_dev->file;
 return os_file_size(file, size_out);
}
