
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_class_entry ;


 int * fdfs_exception_ce ;

zend_class_entry *php_fdfs_get_exception(void)
{
 return fdfs_exception_ce;
}
