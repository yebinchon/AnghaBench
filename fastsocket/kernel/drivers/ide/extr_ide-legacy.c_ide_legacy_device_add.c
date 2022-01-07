
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_port_info {int host_flags; } ;
struct ide_hw {int dummy; } ;
typedef int hw ;


 int ENOENT ;
 int IDE_HFLAG_QD_2ND_PORT ;
 int IDE_HFLAG_SINGLE ;
 int ide_host_add (struct ide_port_info const*,struct ide_hw**,int,int *) ;
 int ide_legacy_init_one (struct ide_hw**,struct ide_hw*,int,struct ide_port_info const*,unsigned long) ;
 int memset (struct ide_hw**,int ,int) ;

int ide_legacy_device_add(const struct ide_port_info *d, unsigned long config)
{
 struct ide_hw hw[2], *hws[] = { ((void*)0), ((void*)0) };

 memset(&hw, 0, sizeof(hw));

 if ((d->host_flags & IDE_HFLAG_QD_2ND_PORT) == 0)
  ide_legacy_init_one(hws, &hw[0], 0, d, config);
 ide_legacy_init_one(hws, &hw[1], 1, d, config);

 if (hws[0] == ((void*)0) && hws[1] == ((void*)0) &&
     (d->host_flags & IDE_HFLAG_SINGLE))
  return -ENOENT;

 return ide_host_add(d, hws, 2, ((void*)0));
}
