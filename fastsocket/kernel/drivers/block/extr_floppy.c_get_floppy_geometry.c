
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_struct {int dummy; } ;


 int CALL (int ) ;
 int ENODEV ;
 int LOCK_FDC (int,int ) ;
 struct floppy_struct** current_type ;
 struct floppy_struct* floppy_type ;
 int poll_drive (int ,int ) ;
 int process_fd_request () ;

__attribute__((used)) static int get_floppy_geometry(int drive, int type, struct floppy_struct **g)
{
 if (type)
  *g = &floppy_type[type];
 else {
  LOCK_FDC(drive, 0);
  CALL(poll_drive(0, 0));
  process_fd_request();
  *g = current_type[drive];
 }
 if (!*g)
  return -ENODEV;
 return 0;
}
