
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 int KERN_ERR ;
 int PRINTK (int ,char*,size_t,size_t) ;
 size_t virt_to_bus (void*) ;

__attribute__((used)) static int check_area (void * start, size_t length) {

  const u32 fourmegmask = -1 << 22;
  const u32 twofivesixmask = -1 << 8;
  const u32 starthole = 0xE0000000;
  u32 startaddress = virt_to_bus (start);
  u32 lastaddress = startaddress+length-1;
  if ((startaddress ^ lastaddress) & fourmegmask ||
      (startaddress & twofivesixmask) == starthole) {
    PRINTK (KERN_ERR, "check_area failure: [%x,%x] - mail maintainer!",
     startaddress, lastaddress);
    return -1;
  } else {
    return 0;
  }
}
