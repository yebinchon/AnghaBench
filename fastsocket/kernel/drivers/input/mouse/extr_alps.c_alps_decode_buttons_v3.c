
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alps_fields {int left; int right; int middle; int ts_left; int ts_right; int ts_middle; } ;



__attribute__((used)) static void alps_decode_buttons_v3(struct alps_fields *f, unsigned char *p)
{
 f->left = !!(p[3] & 0x01);
 f->right = !!(p[3] & 0x02);
 f->middle = !!(p[3] & 0x04);

 f->ts_left = !!(p[3] & 0x10);
 f->ts_right = !!(p[3] & 0x20);
 f->ts_middle = !!(p[3] & 0x40);
}
