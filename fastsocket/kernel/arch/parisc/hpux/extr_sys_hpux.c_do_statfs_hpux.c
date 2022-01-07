
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int * val; } ;
struct kstatfs {TYPE_1__ f_fsid; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; int f_type; } ;
struct hpux_statfs {int * f_fsid; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; int f_type; } ;


 int memset (struct hpux_statfs*,int ,int) ;
 int vfs_statfs (struct path*,struct kstatfs*) ;

__attribute__((used)) static int do_statfs_hpux(struct path *path, struct hpux_statfs *buf)
{
 struct kstatfs st;
 int retval;

 retval = vfs_statfs(path, &st);
 if (retval)
  return retval;

 memset(buf, 0, sizeof(*buf));
 buf->f_type = st.f_type;
 buf->f_bsize = st.f_bsize;
 buf->f_blocks = st.f_blocks;
 buf->f_bfree = st.f_bfree;
 buf->f_bavail = st.f_bavail;
 buf->f_files = st.f_files;
 buf->f_ffree = st.f_ffree;
 buf->f_fsid[0] = st.f_fsid.val[0];
 buf->f_fsid[1] = st.f_fsid.val[1];

 return 0;
}
