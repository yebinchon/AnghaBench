
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int * directory; } ;
struct fw_device {int * config_rom; } ;
struct fw_csr_iterator {int dummy; } ;






 int fw_csr_iterator_init (struct fw_csr_iterator*,int *) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 struct fw_device* fw_parent_device (struct fw_unit*) ;
 int snprintf (char*,size_t,char*,int,int,int,int) ;

__attribute__((used)) static int get_modalias(struct fw_unit *unit, char *buffer, size_t buffer_size)
{
 struct fw_device *device = fw_parent_device(unit);
 struct fw_csr_iterator ci;

 int key, value;
 int vendor = 0;
 int model = 0;
 int specifier_id = 0;
 int version = 0;

 fw_csr_iterator_init(&ci, &device->config_rom[5]);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  switch (key) {
  case 129:
   vendor = value;
   break;
  case 131:
   model = value;
   break;
  }
 }

 fw_csr_iterator_init(&ci, unit->directory);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  switch (key) {
  case 130:
   specifier_id = value;
   break;
  case 128:
   version = value;
   break;
  }
 }

 return snprintf(buffer, buffer_size,
   "ieee1394:ven%08Xmo%08Xsp%08Xver%08X",
   vendor, model, specifier_id, version);
}
