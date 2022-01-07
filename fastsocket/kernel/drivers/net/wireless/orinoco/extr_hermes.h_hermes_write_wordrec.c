
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hermes {int dummy; } ;
typedef int __le16 ;


 int HERMES_WRITE_RECORD (struct hermes*,int,int ,int *) ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static inline int hermes_write_wordrec(struct hermes *hw, int bap, u16 rid,
           u16 word)
{
 __le16 rec = cpu_to_le16(word);
 return HERMES_WRITE_RECORD(hw, bap, rid, &rec);
}
