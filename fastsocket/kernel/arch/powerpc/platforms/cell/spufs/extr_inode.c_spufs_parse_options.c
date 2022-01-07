
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int substring_t ;
struct super_block {int dummy; } ;
struct inode {int i_uid; int i_gid; int i_mode; } ;
struct TYPE_2__ {int debug; } ;


 int MAX_OPT_ARGS ;




 int S_IFDIR ;
 int match_int (int *,int*) ;
 int match_octal (int *,int*) ;
 int match_token (char*,int ,int *) ;
 TYPE_1__* spufs_get_sb_info (struct super_block*) ;
 int spufs_tokens ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
spufs_parse_options(struct super_block *sb, char *options, struct inode *root)
{
 char *p;
 substring_t args[MAX_OPT_ARGS];

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token, option;

  if (!*p)
   continue;

  token = match_token(p, spufs_tokens, args);
  switch (token) {
  case 128:
   if (match_int(&args[0], &option))
    return 0;
   root->i_uid = option;
   break;
  case 130:
   if (match_int(&args[0], &option))
    return 0;
   root->i_gid = option;
   break;
  case 129:
   if (match_octal(&args[0], &option))
    return 0;
   root->i_mode = option | S_IFDIR;
   break;
  case 131:
   spufs_get_sb_info(sb)->debug = 1;
   break;
  default:
   return 0;
  }
 }
 return 1;
}
