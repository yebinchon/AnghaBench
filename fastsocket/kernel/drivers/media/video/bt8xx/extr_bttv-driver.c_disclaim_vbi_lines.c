
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {scalar_t__ vbi_end; } ;



__attribute__((used)) static void
disclaim_vbi_lines(struct bttv *btv)
{
 btv->vbi_end = 0;
}
