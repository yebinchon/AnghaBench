
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoltrix {int curvol; scalar_t__ muted; } ;


 int zol_setvol (struct zoltrix*,int ) ;

__attribute__((used)) static void zol_unmute(struct zoltrix *zol)
{
 zol->muted = 0;
 zol_setvol(zol, zol->curvol);
}
