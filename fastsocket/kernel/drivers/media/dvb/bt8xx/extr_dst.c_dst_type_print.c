
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int dummy; } ;


 int DST_INFO ;




 int EINVAL ;
 int dprintk (int ,int ,int,char*,...) ;
 int verbose ;

__attribute__((used)) static int dst_type_print(struct dst_state *state, u8 type)
{
 char *otype;
 switch (type) {
 case 129:
  otype = "satellite";
  break;

 case 128:
  otype = "terrestrial";
  break;

 case 130:
  otype = "cable";
  break;

 case 131:
  otype = "atsc";
  break;

 default:
  dprintk(verbose, DST_INFO, 1, "invalid dst type %d", type);
  return -EINVAL;
 }
 dprintk(verbose, DST_INFO, 1, "DST type: %s", otype);

 return 0;
}
