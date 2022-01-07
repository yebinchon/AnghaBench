
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct floppy_struct {char const* name; } ;
struct TYPE_2__ {int native_format; } ;


 TYPE_1__* UDP ;
 struct floppy_struct* floppy_type ;

__attribute__((used)) static inline const char *drive_name(int type, int drive)
{
 struct floppy_struct *floppy;

 if (type)
  floppy = floppy_type + type;
 else {
  if (UDP->native_format)
   floppy = floppy_type + UDP->native_format;
  else
   return "(null)";
 }
 if (floppy->name)
  return floppy->name;
 else
  return "(null)";
}
