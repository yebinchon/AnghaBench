
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct cred {int fsgid; int fsuid; } ;
typedef int gid_t ;


 int ENOMEM ;
 int commit_creds (struct cred*) ;
 struct cred* prepare_creds () ;

__attribute__((used)) static int sp_setfsuidgid(uid_t uid, gid_t gid)
{
 struct cred *new;

 new = prepare_creds();
 if (!new)
  return -ENOMEM;

 new->fsuid = uid;
 new->fsgid = gid;

 commit_creds(new);

 return 0;
}
