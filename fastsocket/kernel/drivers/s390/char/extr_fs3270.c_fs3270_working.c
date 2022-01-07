
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs3270 {int init; scalar_t__ active; } ;


 scalar_t__ raw3270_request_final (int ) ;

__attribute__((used)) static inline int
fs3270_working(struct fs3270 *fp)
{




 return fp->active && raw3270_request_final(fp->init);
}
