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

/* Variables and functions */
#define  EACCES 134 
#define  ENODEV 133 
#define  ENOENT 132 
#define  ENOEXEC 131 
#define  ENOTDIR 130 
#define  ESTALE 129 
#define  ETIMEDOUT 128 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,char* const*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char const*) ; 

int FUNC5(char *buf, const char *file, char *const argv[])
{
	if (*file == '\0') {
		return -ENOENT;
	}

	if (FUNC3 (file, '/') != NULL) {
		/* Don't search when it contains a slash.  */
		FUNC0(file, argv);
	} else {
		int got_eacces;
		size_t len, pathlen;
		char *name, *p;
		char *path = FUNC1("PATH");
		if (path == NULL)
			path = ":/bin:/usr/bin";

		len = FUNC4(file) + 1;
		pathlen = FUNC4(path);
		/* Copy the file name at the top.  */
		name = FUNC2(buf + pathlen + 1, file, len);
		/* And add the slash.  */
		*--name = '/';

		got_eacces = 0;
		p = path;
		do {
			char *startp;

			path = p;
			//Let's avoid this GNU extension.
			//p = strchrnul (path, ':');
			p = FUNC3(path, ':');
			if (!p)
				p = FUNC3(path, '\0');

			if (p == path)
				/* Two adjacent colons, or a colon at the beginning or the end
				   of `PATH' means to search the current directory.  */
				startp = name + 1;
			else
				startp = FUNC2(name - (p - path), path, p - path);

			/* Try to execute this name.  If it works, execv will not return.  */
			FUNC0(startp, argv);

			/*
			if (errno == ENOEXEC) {
			}
			*/

			switch (errno) {
				case EACCES:
					/* Record the we got a `Permission denied' error.  If we end
					   up finding no executable we can use, we want to diagnose
					   that we did find one but were denied access.  */
					got_eacces = 1;
				case ENOENT:
				case ESTALE:
				case ENOTDIR:
					/* Those errors indicate the file is missing or not executable
					   by us, in which case we want to just try the next path
					   directory.  */
				case ENODEV:
				case ETIMEDOUT:
					/* Some strange filesystems like AFS return even
					   stranger error numbers.  They cannot reasonably mean
					   anything else so ignore those, too.  */
				case ENOEXEC:
					/* We won't go searching for the shell
					 * if it is not executable - the Linux
					 * kernel already handles this enough,
					 * for us. */
					break;

				default:
					/* Some other error means we found an executable file, but
					   something went wrong executing it; return the error to our
					   caller.  */
					return -errno;
			}
		} while (*p++ != '\0');

		/* We tried every element and none of them worked.  */
		if (got_eacces)
			/* At least one failure was due to permissions, so report that
			   error.  */
			return -EACCES;
	}

	/* Return the error from the last attempt (probably ENOENT).  */
	return -errno;
}