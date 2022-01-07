
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_firmware_file {int * filename; int * data; } ;


 int release_firmware (int *) ;

void b43_do_release_fw(struct b43_firmware_file *fw)
{
 release_firmware(fw->data);
 fw->data = ((void*)0);
 fw->filename = ((void*)0);
}
