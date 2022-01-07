
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksign_user_id {int name; } ;


 int printk (char*,int ) ;

__attribute__((used)) static int add_keyblock_uid(struct ksign_user_id *uid, void *data)
{
 printk("- User ID: %s\n", uid->name);
 return 1;
}
