
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousedev {size_t minor; } ;


 struct mousedev** mousedev_table ;

__attribute__((used)) static int mousedev_install_chrdev(struct mousedev *mousedev)
{
 mousedev_table[mousedev->minor] = mousedev;
 return 0;
}
