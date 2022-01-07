
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wl {int if_type; scalar_t__ operating; } ;



__attribute__((used)) static inline
int b43legacy_is_mode(struct b43legacy_wl *wl, int type)
{
 return (wl->operating &&
  wl->if_type == type);
}
