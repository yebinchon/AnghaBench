
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_inq {char* vid; char* pid; char* prl; } ;
struct aac_driver_ident {char* vname; char* model; } ;
struct TYPE_2__ {char* AdapterTypeText; } ;
struct aac_dev {int cardtype; TYPE_1__ supplement_adapter_info; } ;


 int ARRAY_SIZE (char**) ;
 struct aac_driver_ident* aac_get_driver_ident (int ) ;
 char** container_types ;
 int inqstrcpy (char*,char*) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (struct scsi_inq*,char,int) ;
 int strlen (char*) ;

__attribute__((used)) static void setinqstr(struct aac_dev *dev, void *data, int tindex)
{
 struct scsi_inq *str;

 str = (struct scsi_inq *)(data);
 memset(str, ' ', sizeof(*str));

 if (dev->supplement_adapter_info.AdapterTypeText[0]) {
  char * cp = dev->supplement_adapter_info.AdapterTypeText;
  int c;
  if ((cp[0] == 'A') && (cp[1] == 'O') && (cp[2] == 'C'))
   inqstrcpy("SMC", str->vid);
  else {
   c = sizeof(str->vid);
   while (*cp && *cp != ' ' && --c)
    ++cp;
   c = *cp;
   *cp = '\0';
   inqstrcpy (dev->supplement_adapter_info.AdapterTypeText,
       str->vid);
   *cp = c;
   while (*cp && *cp != ' ')
    ++cp;
  }
  while (*cp == ' ')
   ++cp;

  c = 0;
  if (strlen(cp) > sizeof(str->pid)) {
   c = cp[sizeof(str->pid)];
   cp[sizeof(str->pid)] = '\0';
  }
  inqstrcpy (cp, str->pid);
  if (c)
   cp[sizeof(str->pid)] = c;
 } else {
  struct aac_driver_ident *mp = aac_get_driver_ident(dev->cardtype);

  inqstrcpy (mp->vname, str->vid);

  inqstrcpy (mp->model, str->pid);
 }

 if (tindex < ARRAY_SIZE(container_types)){
  char *findit = str->pid;

  for ( ; *findit != ' '; findit++);

  if (memcmp(findit-4, "RAID", 4) == 0)
   *(findit -= 4) = ' ';
  if (((findit - str->pid) + strlen(container_types[tindex]))
   < (sizeof(str->pid) + sizeof(str->prl)))
   inqstrcpy (container_types[tindex], findit + 1);
 }
 inqstrcpy ("V1.0", str->prl);
}
