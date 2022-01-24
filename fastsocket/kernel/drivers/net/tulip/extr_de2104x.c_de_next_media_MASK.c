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
typedef  int /*<<< orphan*/  u32 ;
struct de_private {int /*<<< orphan*/  media_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct de_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (struct de_private *de, u32 *media,
			   unsigned int n_media)
{
	unsigned int i;

	for (i = 0; i < n_media; i++) {
		if (FUNC0(de, media[i])) {
			de->media_type = media[i];
			return;
		}
	}
}