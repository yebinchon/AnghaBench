
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;



__attribute__((used)) static byte chi_to_channel (byte *chi, dword *pchannelmap)
{
  int p;
  int i;
  dword map;
  byte excl;
  byte ofs;
  byte ch;

  if (pchannelmap) *pchannelmap = 0;
  if(!chi[0]) return 0xff;
  excl = 0;

  if(chi[1] & 0x20) {
    if(chi[0]==1 && chi[1]==0xac) return 0xfd;
    for(i=1; i<chi[0] && !(chi[i] &0x80); i++);
    if(i==chi[0] || !(chi[i] &0x80)) return 0xfe;
    if((chi[1] |0xc8)!=0xe9) return 0xfe;
    if(chi[1] &0x08) excl = 0x40;


    if(chi[1] &0x40) {
      p=i+1;
      for(i=p; i<chi[0] && !(chi[i] &0x80); i++);
      if(i==chi[0] || !(chi[i] &0x80)) return 0xfe;
    }


    p=i+1;
    for(i=p; i<chi[0] && !(chi[i] &0x80); i++);
    if(i==chi[0] || !(chi[i] &0x80)) return 0xfe;
    if((chi[p]|0xd0)!=0xd3) return 0xfe;


    if(chi[p] &0x10) {


      if((chi[0]-p)==4) ofs = 0;
      else if((chi[0]-p)==3) ofs = 1;
      else return 0xfe;
      ch = 0;
      map = 0;
      for(i=0; i<4 && p<chi[0]; i++) {
        p++;
        ch += 8;
        map <<= 8;
        if(chi[p]) {
          for (ch=0; !(chi[p] & (1 << ch)); ch++);
          map |= chi[p];
        }
      }
      ch += ofs;
      map <<= ofs;
    }
    else {


      p=i+1;
      ch = chi[p] &0x3f;
      if(pchannelmap) {
        if((byte)(chi[0]-p)>30) return 0xfe;
        map = 0;
        for(i=p; i<=chi[0]; i++) {
          if ((chi[i] &0x7f) > 31) return 0xfe;
          map |= (1L << (chi[i] &0x7f));
        }
      }
      else {
        if(p!=chi[0]) return 0xfe;
        if (ch > 31) return 0xfe;
        map = (1L << ch);
      }
      if(chi[p] &0x40) return 0xfe;
    }
    if (pchannelmap) *pchannelmap = map;
    else if (map != ((dword)(1L << ch))) return 0xfe;
    return (byte)(excl | ch);
  }
  else {
    for(i=1; i<chi[0] && !(chi[i] &0x80); i++);
    if(i!=chi[0] || !(chi[i] &0x80)) return 0xfe;
    if(chi[1] &0x08) excl = 0x40;

    switch(chi[1] |0x98) {
    case 0x98: return 0;
    case 0x99:
      if (pchannelmap) *pchannelmap = 2;
      return excl |1;
    case 0x9a:
      if (pchannelmap) *pchannelmap = 4;
      return excl |2;
    case 0x9b: return 0xff;
    case 0x9c: return 0xfd;
    default: return 0xfe;
    }
  }
}
