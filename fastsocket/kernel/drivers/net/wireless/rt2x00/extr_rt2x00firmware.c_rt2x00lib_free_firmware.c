
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int * fw; } ;


 int release_firmware (int *) ;

void rt2x00lib_free_firmware(struct rt2x00_dev *rt2x00dev)
{
 release_firmware(rt2x00dev->fw);
 rt2x00dev->fw = ((void*)0);
}
