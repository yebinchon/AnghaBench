#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_inq {char* vid; char* pid; char* prl; } ;
struct aac_driver_ident {char* vname; char* model; } ;
struct TYPE_2__ {char* AdapterTypeText; } ;
struct aac_dev {int /*<<< orphan*/  cardtype; TYPE_1__ supplement_adapter_info; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 struct aac_driver_ident* FUNC1 (int /*<<< orphan*/ ) ; 
 char** container_types ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_inq*,char,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct aac_dev *dev, void *data, int tindex)
{
	struct scsi_inq *str;

	str = (struct scsi_inq *)(data); /* cast data to scsi inq block */
	FUNC4(str, ' ', sizeof(*str));

	if (dev->supplement_adapter_info.AdapterTypeText[0]) {
		char * cp = dev->supplement_adapter_info.AdapterTypeText;
		int c;
		if ((cp[0] == 'A') && (cp[1] == 'O') && (cp[2] == 'C'))
			FUNC2("SMC", str->vid);
		else {
			c = sizeof(str->vid);
			while (*cp && *cp != ' ' && --c)
				++cp;
			c = *cp;
			*cp = '\0';
			FUNC2 (dev->supplement_adapter_info.AdapterTypeText,
				   str->vid);
			*cp = c;
			while (*cp && *cp != ' ')
				++cp;
		}
		while (*cp == ' ')
			++cp;
		/* last six chars reserved for vol type */
		c = 0;
		if (FUNC5(cp) > sizeof(str->pid)) {
			c = cp[sizeof(str->pid)];
			cp[sizeof(str->pid)] = '\0';
		}
		FUNC2 (cp, str->pid);
		if (c)
			cp[sizeof(str->pid)] = c;
	} else {
		struct aac_driver_ident *mp = FUNC1(dev->cardtype);

		FUNC2 (mp->vname, str->vid);
		/* last six chars reserved for vol type */
		FUNC2 (mp->model, str->pid);
	}

	if (tindex < FUNC0(container_types)){
		char *findit = str->pid;

		for ( ; *findit != ' '; findit++); /* walk till we find a space */
		/* RAID is superfluous in the context of a RAID device */
		if (FUNC3(findit-4, "RAID", 4) == 0)
			*(findit -= 4) = ' ';
		if (((findit - str->pid) + FUNC5(container_types[tindex]))
		 < (sizeof(str->pid) + sizeof(str->prl)))
			FUNC2 (container_types[tindex], findit + 1);
	}
	FUNC2 ("V1.0", str->prl);
}