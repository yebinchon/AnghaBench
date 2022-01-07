
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dm_btree_info {int dummy; } ;
typedef int root_le ;
typedef int __le64 ;


 int DMERR (char*) ;
 scalar_t__ dm_btree_del (struct dm_btree_info*,int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,void const*,int) ;

__attribute__((used)) static void subtree_dec(void *context, const void *value)
{
 struct dm_btree_info *info = context;
 __le64 root_le;
 uint64_t root;

 memcpy(&root_le, value, sizeof(root_le));
 root = le64_to_cpu(root_le);
 if (dm_btree_del(info, root))
  DMERR("btree delete failed\n");
}
