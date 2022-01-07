
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_device {int ro_mode; } ;


 int ubi_warn (char*) ;

__attribute__((used)) static inline void ubi_ro_mode(struct ubi_device *ubi)
{
 if (!ubi->ro_mode) {
  ubi->ro_mode = 1;
  ubi_warn("switch to read-only mode");
 }
}
