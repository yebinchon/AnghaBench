#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ user_magic; struct TYPE_6__* next; struct pcmcia_socket* socket; } ;
typedef  TYPE_2__ user_info_t ;
struct TYPE_5__ {scalar_t__ busy; } ;
struct pcmcia_socket {TYPE_2__* user; TYPE_1__ pcmcia_state; } ;
struct inode {int dummy; } ;
struct file {int f_flags; TYPE_2__* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
    struct pcmcia_socket *s;
    user_info_t *user, **link;

    FUNC1(0, "ds_release(socket %d)\n", FUNC2(inode));

    user = file->private_data;
    if (FUNC0(user))
	goto out;

    s = user->socket;

    /* Unlink user data structure */
    if ((file->f_flags & O_ACCMODE) != O_RDONLY) {
	s->pcmcia_state.busy = 0;
    }
    file->private_data = NULL;
    for (link = &s->user; *link; link = &(*link)->next)
	if (*link == user) break;
    if (link == NULL)
	goto out;
    *link = user->next;
    user->user_magic = 0;
    FUNC3(user);
    FUNC4(s);
out:
    return 0;
}