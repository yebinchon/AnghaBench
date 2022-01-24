__attribute__((used)) static void
FUNC0(unsigned char *p1, unsigned char *p2, unsigned nb, unsigned maxpr)
{
	unsigned n, prt;

	prt = 0;
	for( n = nb; n > 0; --n )
		if( *p1++ != *p2++ )
			if( ++prt <= maxpr )
				printf("%.16s %.2x # %.16s %.2x\n", p1 - 1,
					p1[-1], p2 - 1, p2[-1]);
	if( prt > maxpr )
		FUNC0("Total of %d differences\n", prt);
}