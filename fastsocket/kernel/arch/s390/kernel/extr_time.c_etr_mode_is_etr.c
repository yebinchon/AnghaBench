
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etr_eacr {scalar_t__ sl; scalar_t__ es; } ;



__attribute__((used)) static inline int etr_mode_is_etr(struct etr_eacr eacr)
{
 return eacr.es && eacr.sl;
}
