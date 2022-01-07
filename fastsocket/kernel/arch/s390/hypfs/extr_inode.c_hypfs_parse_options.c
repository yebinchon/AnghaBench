
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {struct hypfs_sb_info* s_fs_info; } ;
struct hypfs_sb_info {int uid; int gid; } ;


 int EINVAL ;
 int MAX_OPT_ARGS ;
 int hypfs_tokens ;
 int match_int (int *,int*) ;
 int match_token (char*,int ,int *) ;



 int pr_err (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int hypfs_parse_options(char *options, struct super_block *sb)
{
 char *str;
 substring_t args[MAX_OPT_ARGS];

 if (!options)
  return 0;
 while ((str = strsep(&options, ",")) != ((void*)0)) {
  int token, option;
  struct hypfs_sb_info *hypfs_info = sb->s_fs_info;

  if (!*str)
   continue;
  token = match_token(str, hypfs_tokens, args);
  switch (token) {
  case 128:
   if (match_int(&args[0], &option))
    return -EINVAL;
   hypfs_info->uid = option;
   break;
  case 129:
   if (match_int(&args[0], &option))
    return -EINVAL;
   hypfs_info->gid = option;
   break;
  case 130:
  default:
   pr_err("%s is not a valid mount option\n", str);
   return -EINVAL;
  }
 }
 return 0;
}
