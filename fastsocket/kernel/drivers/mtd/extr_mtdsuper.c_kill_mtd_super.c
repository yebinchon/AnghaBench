
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_mtd; } ;


 int generic_shutdown_super (struct super_block*) ;
 int put_mtd_device (int *) ;

void kill_mtd_super(struct super_block *sb)
{
 generic_shutdown_super(sb);
 put_mtd_device(sb->s_mtd);
 sb->s_mtd = ((void*)0);
}
