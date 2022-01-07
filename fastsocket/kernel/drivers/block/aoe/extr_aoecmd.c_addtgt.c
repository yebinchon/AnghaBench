
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct aoetgt {int nframes; int maxout; int ffree; int ifs; int ifp; int addr; struct aoedev* d; } ;
struct aoedev {int ntargets; struct aoetgt** targets; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int aoecmd_wreset (struct aoetgt*) ;
 struct aoetgt** grow_targets (struct aoedev*) ;
 struct aoetgt* kzalloc (int,int ) ;
 int memcpy (int ,char*,int) ;
 int pr_info (char*) ;

__attribute__((used)) static struct aoetgt *
addtgt(struct aoedev *d, char *addr, ulong nframes)
{
 struct aoetgt *t, **tt, **te;

 tt = d->targets;
 te = tt + d->ntargets;
 for (; tt < te && *tt; tt++)
  ;

 if (tt == te) {
  tt = grow_targets(d);
  if (!tt)
   goto nomem;
 }
 t = kzalloc(sizeof(*t), GFP_ATOMIC);
 if (!t)
  goto nomem;
 t->nframes = nframes;
 t->d = d;
 memcpy(t->addr, addr, sizeof t->addr);
 t->ifp = t->ifs;
 aoecmd_wreset(t);
 t->maxout = t->nframes / 2;
 INIT_LIST_HEAD(&t->ffree);
 return *tt = t;

 nomem:
 pr_info("aoe: cannot allocate memory to add target\n");
 return ((void*)0);
}
