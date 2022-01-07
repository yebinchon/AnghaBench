
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int set; int emul; } ;



__attribute__((used)) static unsigned int atkbd_compat_scancode(struct atkbd *atkbd, unsigned int code)
{
 if (atkbd->set == 3) {
  if (atkbd->emul == 1)
   code |= 0x100;
        } else {
  code = (code & 0x7f) | ((code & 0x80) << 1);
  if (atkbd->emul == 1)
   code |= 0x80;
 }

 return code;
}
