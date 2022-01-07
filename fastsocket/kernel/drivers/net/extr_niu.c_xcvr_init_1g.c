
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int MIF_CONFIG ;
 int MIF_CONFIG_INDIRECT_MODE ;
 int mii_init_common (struct niu*) ;
 int nr64 (int ) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int xcvr_init_1g(struct niu *np)
{
 u64 val;


 val = nr64(MIF_CONFIG);
 val &= ~MIF_CONFIG_INDIRECT_MODE;
 nw64(MIF_CONFIG, val);

 return mii_init_common(np);
}
