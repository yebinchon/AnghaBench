
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbd {int force_release_mask; } ;
typedef size_t ssize_t ;


 int ATKBD_KEYMAP_SIZE ;
 scalar_t__ PAGE_SIZE ;
 size_t bitmap_scnlistprintf (char*,scalar_t__,int ,int ) ;

__attribute__((used)) static ssize_t atkbd_show_force_release(struct atkbd *atkbd, char *buf)
{
 size_t len = bitmap_scnlistprintf(buf, PAGE_SIZE - 2,
   atkbd->force_release_mask, ATKBD_KEYMAP_SIZE);

 buf[len++] = '\n';
 buf[len] = '\0';

 return len;
}
