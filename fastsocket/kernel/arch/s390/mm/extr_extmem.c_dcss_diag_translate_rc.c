
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENOENT ;

__attribute__((used)) static inline int
dcss_diag_translate_rc (int vm_rc) {
 if (vm_rc == 44)
  return -ENOENT;
 return -EIO;
}
