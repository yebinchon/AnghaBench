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
 int /*<<< orphan*/  DECRYPT ; 
 int /*<<< orphan*/  DES3_SPEED_VECTORS ; 
 int /*<<< orphan*/  ENCRYPT ; 
 int /*<<< orphan*/ * des3_speed_template ; 
 int /*<<< orphan*/  generic_hash_speed_template ; 
 int mode ; 
 int /*<<< orphan*/  sec ; 
 int /*<<< orphan*/  speed_template_16_24_32 ; 
 int /*<<< orphan*/  speed_template_16_32 ; 
 int /*<<< orphan*/  speed_template_24 ; 
 int /*<<< orphan*/  speed_template_32_40_48 ; 
 int /*<<< orphan*/  speed_template_32_48_64 ; 
 int /*<<< orphan*/  speed_template_8 ; 
 int /*<<< orphan*/  speed_template_8_32 ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int m)
{
	int i;
	int ret = 0;

	switch (m) {
	case 0:
		for (i = 1; i < 200; i++)
			ret += FUNC4(i);
		break;

	case 1:
		ret += FUNC0("md5");
		break;

	case 2:
		ret += FUNC0("sha1");
		break;

	case 3:
		ret += FUNC0("ecb(des)");
		ret += FUNC0("cbc(des)");
		break;

	case 4:
		ret += FUNC0("ecb(des3_ede)");
		ret += FUNC0("cbc(des3_ede)");
		break;

	case 5:
		ret += FUNC0("md4");
		break;

	case 6:
		ret += FUNC0("sha256");
		break;

	case 7:
		ret += FUNC0("ecb(blowfish)");
		ret += FUNC0("cbc(blowfish)");
		break;

	case 8:
		ret += FUNC0("ecb(twofish)");
		ret += FUNC0("cbc(twofish)");
		break;

	case 9:
		ret += FUNC0("ecb(serpent)");
		break;

	case 10:
		ret += FUNC0("ecb(aes)");
		ret += FUNC0("cbc(aes)");
		ret += FUNC0("lrw(aes)");
		ret += FUNC0("xts(aes)");
		ret += FUNC0("ctr(aes)");
		ret += FUNC0("rfc3686(ctr(aes))");
		break;

	case 11:
		ret += FUNC0("sha384");
		break;

	case 12:
		ret += FUNC0("sha512");
		break;

	case 13:
		ret += FUNC0("deflate");
		break;

	case 14:
		ret += FUNC0("ecb(cast5)");
		break;

	case 15:
		ret += FUNC0("ecb(cast6)");
		break;

	case 16:
		ret += FUNC0("ecb(arc4)");
		break;

	case 17:
		ret += FUNC0("michael_mic");
		break;

	case 18:
		ret += FUNC0("crc32c");
		break;

	case 19:
		ret += FUNC0("ecb(tea)");
		break;

	case 20:
		ret += FUNC0("ecb(xtea)");
		break;

	case 21:
		ret += FUNC0("ecb(khazad)");
		break;

	case 22:
		ret += FUNC0("wp512");
		break;

	case 23:
		ret += FUNC0("wp384");
		break;

	case 24:
		ret += FUNC0("wp256");
		break;

	case 25:
		ret += FUNC0("ecb(tnepres)");
		break;

	case 26:
		ret += FUNC0("ecb(anubis)");
		ret += FUNC0("cbc(anubis)");
		break;

	case 27:
		ret += FUNC0("tgr192");
		break;

	case 28:

		ret += FUNC0("tgr160");
		break;

	case 29:
		ret += FUNC0("tgr128");
		break;

	case 30:
		ret += FUNC0("ecb(xeta)");
		break;

	case 31:
		ret += FUNC0("pcbc(fcrypt)");
		break;

	case 32:
		ret += FUNC0("ecb(camellia)");
		ret += FUNC0("cbc(camellia)");
		break;
	case 33:
		ret += FUNC0("sha224");
		break;

	case 34:
		ret += FUNC0("salsa20");
		break;

	case 35:
		ret += FUNC0("gcm(aes)");
		break;

	case 36:
		ret += FUNC0("lzo");
		break;

	case 37:
		ret += FUNC0("ccm(aes)");
		break;

	case 38:
		ret += FUNC0("cts(cbc(aes))");
		break;

        case 39:
		ret += FUNC0("rmd128");
		break;

        case 40:
		ret += FUNC0("rmd160");
		break;

	case 41:
		ret += FUNC0("rmd256");
		break;

	case 42:
		ret += FUNC0("rmd320");
		break;

	case 43:
		ret += FUNC0("ecb(seed)");
		break;

	case 44:
		ret += FUNC0("zlib");
		break;

	case 45:
		ret += FUNC0("rfc4309(ccm(aes))");
		break;

	case 100:
		ret += FUNC0("hmac(md5)");
		break;

	case 101:
		ret += FUNC0("hmac(sha1)");
		break;

	case 102:
		ret += FUNC0("hmac(sha256)");
		break;

	case 103:
		ret += FUNC0("hmac(sha384)");
		break;

	case 104:
		ret += FUNC0("hmac(sha512)");
		break;

	case 105:
		ret += FUNC0("hmac(sha224)");
		break;

	case 106:
		ret += FUNC0("xcbc(aes)");
		break;

	case 107:
		ret += FUNC0("hmac(rmd128)");
		break;

	case 108:
		ret += FUNC0("hmac(rmd160)");
		break;

	case 109:
		ret += FUNC0("vmac(aes)");
		break;

	case 150:
		ret += FUNC0("ansi_cprng");
		break;

	case 200:
		FUNC2("ecb(aes)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("ecb(aes)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(aes)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(aes)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("lrw(aes)", ENCRYPT, sec, NULL, 0,
				speed_template_32_40_48);
		FUNC2("lrw(aes)", DECRYPT, sec, NULL, 0,
				speed_template_32_40_48);
		FUNC2("xts(aes)", ENCRYPT, sec, NULL, 0,
				speed_template_32_48_64);
		FUNC2("xts(aes)", DECRYPT, sec, NULL, 0,
				speed_template_32_48_64);
		break;

	case 201:
		FUNC2("ecb(des3_ede)", ENCRYPT, sec,
				des3_speed_template, DES3_SPEED_VECTORS,
				speed_template_24);
		FUNC2("ecb(des3_ede)", DECRYPT, sec,
				des3_speed_template, DES3_SPEED_VECTORS,
				speed_template_24);
		FUNC2("cbc(des3_ede)", ENCRYPT, sec,
				des3_speed_template, DES3_SPEED_VECTORS,
				speed_template_24);
		FUNC2("cbc(des3_ede)", DECRYPT, sec,
				des3_speed_template, DES3_SPEED_VECTORS,
				speed_template_24);
		break;

	case 202:
		FUNC2("ecb(twofish)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("ecb(twofish)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(twofish)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(twofish)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		break;

	case 203:
		FUNC2("ecb(blowfish)", ENCRYPT, sec, NULL, 0,
				  speed_template_8_32);
		FUNC2("ecb(blowfish)", DECRYPT, sec, NULL, 0,
				  speed_template_8_32);
		FUNC2("cbc(blowfish)", ENCRYPT, sec, NULL, 0,
				  speed_template_8_32);
		FUNC2("cbc(blowfish)", DECRYPT, sec, NULL, 0,
				  speed_template_8_32);
		break;

	case 204:
		FUNC2("ecb(des)", ENCRYPT, sec, NULL, 0,
				  speed_template_8);
		FUNC2("ecb(des)", DECRYPT, sec, NULL, 0,
				  speed_template_8);
		FUNC2("cbc(des)", ENCRYPT, sec, NULL, 0,
				  speed_template_8);
		FUNC2("cbc(des)", DECRYPT, sec, NULL, 0,
				  speed_template_8);
		break;

	case 205:
		FUNC2("ecb(camellia)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("ecb(camellia)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(camellia)", ENCRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		FUNC2("cbc(camellia)", DECRYPT, sec, NULL, 0,
				speed_template_16_24_32);
		break;

	case 206:
		FUNC2("salsa20", ENCRYPT, sec, NULL, 0,
				  speed_template_16_32);
		break;

	case 300:
		/* fall through */

	case 301:
		FUNC3("md4", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 302:
		FUNC3("md5", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 303:
		FUNC3("sha1", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 304:
		FUNC3("sha256", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 305:
		FUNC3("sha384", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 306:
		FUNC3("sha512", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 307:
		FUNC3("wp256", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 308:
		FUNC3("wp384", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 309:
		FUNC3("wp512", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 310:
		FUNC3("tgr128", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 311:
		FUNC3("tgr160", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 312:
		FUNC3("tgr192", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 313:
		FUNC3("sha224", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 314:
		FUNC3("rmd128", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 315:
		FUNC3("rmd160", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 316:
		FUNC3("rmd256", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 317:
		FUNC3("rmd320", sec, generic_hash_speed_template);
		if (mode > 300 && mode < 400) break;

	case 399:
		break;

	case 1000:
		FUNC1();
		break;
	}

	return ret;
}