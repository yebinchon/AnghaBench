#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct el_subpacket_annotation {scalar_t__ class; scalar_t__ type; scalar_t__ revision; char** annotation; int /*<<< orphan*/  description; struct el_subpacket_annotation* next; } ;
struct el_subpacket {scalar_t__ class; scalar_t__ type; scalar_t__ revision; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int /*<<< orphan*/  err_print_prefix ; 
 int /*<<< orphan*/  FUNC0 (struct el_subpacket*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct el_subpacket_annotation* subpacket_annotation_list ; 

void 
FUNC2(struct el_subpacket *header)
{
	struct el_subpacket_annotation *a;
	char **annotation = NULL;

	for (a = subpacket_annotation_list; a; a = a->next) {
		if (a->class == header->class &&
		    a->type == header->type &&
		    a->revision == header->revision) {
			/*
			 * We found the annotation
			 */
			annotation = a->annotation;
			FUNC1("%s  %s\n", err_print_prefix, a->description);
			break;
		}
	}

	FUNC0(header, header->length, annotation);
}