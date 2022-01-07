
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib3000mc_state {int dev_id; } ;


 int EREMOTEIO ;
 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int dib3000mc_identify(struct dib3000mc_state *state)
{
 u16 value;
 if ((value = dib3000mc_read_word(state, 1025)) != 0x01b3) {
  dprintk("-E-  DiB3000MC/P: wrong Vendor ID (read=0x%x)\n",value);
  return -EREMOTEIO;
 }

 value = dib3000mc_read_word(state, 1026);
 if (value != 0x3001 && value != 0x3002) {
  dprintk("-E-  DiB3000MC/P: wrong Device ID (%x)\n",value);
  return -EREMOTEIO;
 }
 state->dev_id = value;

 dprintk("-I-  found DiB3000MC/P: %x\n",state->dev_id);

 return 0;
}
