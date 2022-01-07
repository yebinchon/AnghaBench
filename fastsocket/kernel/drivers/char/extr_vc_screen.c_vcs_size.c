
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_rows; int vc_cols; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct vc_data* d; } ;


 int ENXIO ;
 int HEADER_SIZE ;
 int fg_console ;
 int iminor (struct inode*) ;
 TYPE_1__* vc_cons ;
 int vc_cons_allocated (int) ;

__attribute__((used)) static int
vcs_size(struct inode *inode)
{
 int size;
 int minor = iminor(inode);
 int currcons = minor & 127;
 struct vc_data *vc;

 if (currcons == 0)
  currcons = fg_console;
 else
  currcons--;
 if (!vc_cons_allocated(currcons))
  return -ENXIO;
 vc = vc_cons[currcons].d;

 size = vc->vc_rows * vc->vc_cols;

 if (minor & 128)
  size = 2*size + HEADER_SIZE;
 return size;
}
