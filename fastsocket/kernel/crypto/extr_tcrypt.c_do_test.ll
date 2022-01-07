; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_do_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ecb(des)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cbc(des)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ecb(des3_ede)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cbc(des3_ede)\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ecb(blowfish)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"cbc(blowfish)\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ecb(twofish)\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"cbc(twofish)\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ecb(serpent)\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"ecb(aes)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"cbc(aes)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"lrw(aes)\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"xts(aes)\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"ctr(aes)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rfc3686(ctr(aes))\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"ecb(cast5)\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"ecb(cast6)\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"ecb(arc4)\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"michael_mic\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"ecb(tea)\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"ecb(xtea)\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ecb(khazad)\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"wp512\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"wp384\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"wp256\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"ecb(tnepres)\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"ecb(anubis)\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"cbc(anubis)\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"tgr192\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"tgr160\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"tgr128\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ecb(xeta)\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"pcbc(fcrypt)\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"ecb(camellia)\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"cbc(camellia)\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"salsa20\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"gcm(aes)\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"ccm(aes)\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"cts(cbc(aes))\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"rmd128\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"rmd256\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"rmd320\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"ecb(seed)\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"rfc4309(ccm(aes))\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"hmac(md5)\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"hmac(sha1)\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"hmac(sha384)\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"hmac(sha512)\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"hmac(sha224)\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"xcbc(aes)\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"hmac(rmd128)\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"hmac(rmd160)\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"vmac(aes)\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"ansi_cprng\00", align 1
@ENCRYPT = common dso_local global i32 0, align 4
@sec = common dso_local global i32 0, align 4
@speed_template_16_24_32 = common dso_local global i32 0, align 4
@DECRYPT = common dso_local global i32 0, align 4
@speed_template_32_40_48 = common dso_local global i32 0, align 4
@speed_template_32_48_64 = common dso_local global i32 0, align 4
@des3_speed_template = common dso_local global i32* null, align 8
@DES3_SPEED_VECTORS = common dso_local global i32 0, align 4
@speed_template_24 = common dso_local global i32 0, align 4
@speed_template_8_32 = common dso_local global i32 0, align 4
@speed_template_8 = common dso_local global i32 0, align 4
@speed_template_16_32 = common dso_local global i32 0, align 4
@generic_hash_speed_template = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %597 [
    i32 0, label %6
    i32 1, label %19
    i32 2, label %23
    i32 3, label %27
    i32 4, label %34
    i32 5, label %41
    i32 6, label %45
    i32 7, label %49
    i32 8, label %56
    i32 9, label %63
    i32 10, label %67
    i32 11, label %86
    i32 12, label %90
    i32 13, label %94
    i32 14, label %98
    i32 15, label %102
    i32 16, label %106
    i32 17, label %110
    i32 18, label %114
    i32 19, label %118
    i32 20, label %122
    i32 21, label %126
    i32 22, label %130
    i32 23, label %134
    i32 24, label %138
    i32 25, label %142
    i32 26, label %146
    i32 27, label %153
    i32 28, label %157
    i32 29, label %161
    i32 30, label %165
    i32 31, label %169
    i32 32, label %173
    i32 33, label %180
    i32 34, label %184
    i32 35, label %188
    i32 36, label %192
    i32 37, label %196
    i32 38, label %200
    i32 39, label %204
    i32 40, label %208
    i32 41, label %212
    i32 42, label %216
    i32 43, label %220
    i32 44, label %224
    i32 45, label %228
    i32 100, label %232
    i32 101, label %236
    i32 102, label %240
    i32 103, label %244
    i32 104, label %248
    i32 105, label %252
    i32 106, label %256
    i32 107, label %260
    i32 108, label %264
    i32 109, label %268
    i32 150, label %272
    i32 200, label %276
    i32 201, label %309
    i32 202, label %334
    i32 203, label %351
    i32 204, label %368
    i32 205, label %385
    i32 206, label %402
    i32 300, label %407
    i32 301, label %407
    i32 302, label %418
    i32 303, label %429
    i32 304, label %440
    i32 305, label %451
    i32 306, label %462
    i32 307, label %473
    i32 308, label %484
    i32 309, label %495
    i32 310, label %506
    i32 311, label %517
    i32 312, label %528
    i32 313, label %539
    i32 314, label %550
    i32 315, label %561
    i32 316, label %572
    i32 317, label %583
    i32 399, label %594
    i32 1000, label %595
  ]

6:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %7

7:                                                ; preds = %15, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 200
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @do_test(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %7

18:                                               ; preds = %7
  br label %597

19:                                               ; preds = %1
  %20 = call i32 @tcrypt_test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %597

23:                                               ; preds = %1
  %24 = call i32 @tcrypt_test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %597

27:                                               ; preds = %1
  %28 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %597

34:                                               ; preds = %1
  %35 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %597

41:                                               ; preds = %1
  %42 = call i32 @tcrypt_test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %597

45:                                               ; preds = %1
  %46 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %597

49:                                               ; preds = %1
  %50 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %597

56:                                               ; preds = %1
  %57 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %597

63:                                               ; preds = %1
  %64 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %597

67:                                               ; preds = %1
  %68 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %4, align 4
  %77 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = call i32 @tcrypt_test(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %4, align 4
  br label %597

86:                                               ; preds = %1
  %87 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  br label %597

90:                                               ; preds = %1
  %91 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %597

94:                                               ; preds = %1
  %95 = call i32 @tcrypt_test(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %4, align 4
  br label %597

98:                                               ; preds = %1
  %99 = call i32 @tcrypt_test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %4, align 4
  br label %597

102:                                              ; preds = %1
  %103 = call i32 @tcrypt_test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %597

106:                                              ; preds = %1
  %107 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %4, align 4
  br label %597

110:                                              ; preds = %1
  %111 = call i32 @tcrypt_test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %4, align 4
  br label %597

114:                                              ; preds = %1
  %115 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %597

118:                                              ; preds = %1
  %119 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %4, align 4
  br label %597

122:                                              ; preds = %1
  %123 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %4, align 4
  br label %597

126:                                              ; preds = %1
  %127 = call i32 @tcrypt_test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %128 = load i32, i32* %4, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %4, align 4
  br label %597

130:                                              ; preds = %1
  %131 = call i32 @tcrypt_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %4, align 4
  br label %597

134:                                              ; preds = %1
  %135 = call i32 @tcrypt_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %4, align 4
  br label %597

138:                                              ; preds = %1
  %139 = call i32 @tcrypt_test(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0))
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %4, align 4
  br label %597

142:                                              ; preds = %1
  %143 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %597

146:                                              ; preds = %1
  %147 = call i32 @tcrypt_test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0))
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %4, align 4
  %150 = call i32 @tcrypt_test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0))
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %4, align 4
  br label %597

153:                                              ; preds = %1
  %154 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %4, align 4
  br label %597

157:                                              ; preds = %1
  %158 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %4, align 4
  br label %597

161:                                              ; preds = %1
  %162 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0))
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %4, align 4
  br label %597

165:                                              ; preds = %1
  %166 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %4, align 4
  br label %597

169:                                              ; preds = %1
  %170 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0))
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %4, align 4
  br label %597

173:                                              ; preds = %1
  %174 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0))
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %4, align 4
  %177 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0))
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %4, align 4
  br label %597

180:                                              ; preds = %1
  %181 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0))
  %182 = load i32, i32* %4, align 4
  %183 = add nsw i32 %182, %181
  store i32 %183, i32* %4, align 4
  br label %597

184:                                              ; preds = %1
  %185 = call i32 @tcrypt_test(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0))
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, %185
  store i32 %187, i32* %4, align 4
  br label %597

188:                                              ; preds = %1
  %189 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0))
  %190 = load i32, i32* %4, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %4, align 4
  br label %597

192:                                              ; preds = %1
  %193 = call i32 @tcrypt_test(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %4, align 4
  br label %597

196:                                              ; preds = %1
  %197 = call i32 @tcrypt_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0))
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* %4, align 4
  br label %597

200:                                              ; preds = %1
  %201 = call i32 @tcrypt_test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0))
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %4, align 4
  br label %597

204:                                              ; preds = %1
  %205 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %597

208:                                              ; preds = %1
  %209 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0))
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %4, align 4
  br label %597

212:                                              ; preds = %1
  %213 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0))
  %214 = load i32, i32* %4, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %4, align 4
  br label %597

216:                                              ; preds = %1
  %217 = call i32 @tcrypt_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0))
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %4, align 4
  br label %597

220:                                              ; preds = %1
  %221 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0))
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %4, align 4
  br label %597

224:                                              ; preds = %1
  %225 = call i32 @tcrypt_test(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i64 0, i64 0))
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %4, align 4
  br label %597

228:                                              ; preds = %1
  %229 = call i32 @tcrypt_test(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0))
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %4, align 4
  br label %597

232:                                              ; preds = %1
  %233 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i64 0, i64 0))
  %234 = load i32, i32* %4, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %4, align 4
  br label %597

236:                                              ; preds = %1
  %237 = call i32 @tcrypt_test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i64 0, i64 0))
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %4, align 4
  br label %597

240:                                              ; preds = %1
  %241 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0))
  %242 = load i32, i32* %4, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %4, align 4
  br label %597

244:                                              ; preds = %1
  %245 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i64 0, i64 0))
  %246 = load i32, i32* %4, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %4, align 4
  br label %597

248:                                              ; preds = %1
  %249 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i64 0, i64 0))
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, %249
  store i32 %251, i32* %4, align 4
  br label %597

252:                                              ; preds = %1
  %253 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0))
  %254 = load i32, i32* %4, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %4, align 4
  br label %597

256:                                              ; preds = %1
  %257 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i64 0, i64 0))
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %258, %257
  store i32 %259, i32* %4, align 4
  br label %597

260:                                              ; preds = %1
  %261 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i64 0, i64 0))
  %262 = load i32, i32* %4, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %4, align 4
  br label %597

264:                                              ; preds = %1
  %265 = call i32 @tcrypt_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i64 0, i64 0))
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %4, align 4
  br label %597

268:                                              ; preds = %1
  %269 = call i32 @tcrypt_test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0))
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %4, align 4
  br label %597

272:                                              ; preds = %1
  %273 = call i32 @tcrypt_test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0))
  %274 = load i32, i32* %4, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %4, align 4
  br label %597

276:                                              ; preds = %1
  %277 = load i32, i32* @ENCRYPT, align 4
  %278 = load i32, i32* @sec, align 4
  %279 = load i32, i32* @speed_template_16_24_32, align 4
  %280 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %277, i32 %278, i32* null, i32 0, i32 %279)
  %281 = load i32, i32* @DECRYPT, align 4
  %282 = load i32, i32* @sec, align 4
  %283 = load i32, i32* @speed_template_16_24_32, align 4
  %284 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i32 %281, i32 %282, i32* null, i32 0, i32 %283)
  %285 = load i32, i32* @ENCRYPT, align 4
  %286 = load i32, i32* @sec, align 4
  %287 = load i32, i32* @speed_template_16_24_32, align 4
  %288 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %285, i32 %286, i32* null, i32 0, i32 %287)
  %289 = load i32, i32* @DECRYPT, align 4
  %290 = load i32, i32* @sec, align 4
  %291 = load i32, i32* @speed_template_16_24_32, align 4
  %292 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %289, i32 %290, i32* null, i32 0, i32 %291)
  %293 = load i32, i32* @ENCRYPT, align 4
  %294 = load i32, i32* @sec, align 4
  %295 = load i32, i32* @speed_template_32_40_48, align 4
  %296 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %293, i32 %294, i32* null, i32 0, i32 %295)
  %297 = load i32, i32* @DECRYPT, align 4
  %298 = load i32, i32* @sec, align 4
  %299 = load i32, i32* @speed_template_32_40_48, align 4
  %300 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %297, i32 %298, i32* null, i32 0, i32 %299)
  %301 = load i32, i32* @ENCRYPT, align 4
  %302 = load i32, i32* @sec, align 4
  %303 = load i32, i32* @speed_template_32_48_64, align 4
  %304 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %301, i32 %302, i32* null, i32 0, i32 %303)
  %305 = load i32, i32* @DECRYPT, align 4
  %306 = load i32, i32* @sec, align 4
  %307 = load i32, i32* @speed_template_32_48_64, align 4
  %308 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %305, i32 %306, i32* null, i32 0, i32 %307)
  br label %597

309:                                              ; preds = %1
  %310 = load i32, i32* @ENCRYPT, align 4
  %311 = load i32, i32* @sec, align 4
  %312 = load i32*, i32** @des3_speed_template, align 8
  %313 = load i32, i32* @DES3_SPEED_VECTORS, align 4
  %314 = load i32, i32* @speed_template_24, align 4
  %315 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %310, i32 %311, i32* %312, i32 %313, i32 %314)
  %316 = load i32, i32* @DECRYPT, align 4
  %317 = load i32, i32* @sec, align 4
  %318 = load i32*, i32** @des3_speed_template, align 8
  %319 = load i32, i32* @DES3_SPEED_VECTORS, align 4
  %320 = load i32, i32* @speed_template_24, align 4
  %321 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %316, i32 %317, i32* %318, i32 %319, i32 %320)
  %322 = load i32, i32* @ENCRYPT, align 4
  %323 = load i32, i32* @sec, align 4
  %324 = load i32*, i32** @des3_speed_template, align 8
  %325 = load i32, i32* @DES3_SPEED_VECTORS, align 4
  %326 = load i32, i32* @speed_template_24, align 4
  %327 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %322, i32 %323, i32* %324, i32 %325, i32 %326)
  %328 = load i32, i32* @DECRYPT, align 4
  %329 = load i32, i32* @sec, align 4
  %330 = load i32*, i32** @des3_speed_template, align 8
  %331 = load i32, i32* @DES3_SPEED_VECTORS, align 4
  %332 = load i32, i32* @speed_template_24, align 4
  %333 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %328, i32 %329, i32* %330, i32 %331, i32 %332)
  br label %597

334:                                              ; preds = %1
  %335 = load i32, i32* @ENCRYPT, align 4
  %336 = load i32, i32* @sec, align 4
  %337 = load i32, i32* @speed_template_16_24_32, align 4
  %338 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %335, i32 %336, i32* null, i32 0, i32 %337)
  %339 = load i32, i32* @DECRYPT, align 4
  %340 = load i32, i32* @sec, align 4
  %341 = load i32, i32* @speed_template_16_24_32, align 4
  %342 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %339, i32 %340, i32* null, i32 0, i32 %341)
  %343 = load i32, i32* @ENCRYPT, align 4
  %344 = load i32, i32* @sec, align 4
  %345 = load i32, i32* @speed_template_16_24_32, align 4
  %346 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %343, i32 %344, i32* null, i32 0, i32 %345)
  %347 = load i32, i32* @DECRYPT, align 4
  %348 = load i32, i32* @sec, align 4
  %349 = load i32, i32* @speed_template_16_24_32, align 4
  %350 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %347, i32 %348, i32* null, i32 0, i32 %349)
  br label %597

351:                                              ; preds = %1
  %352 = load i32, i32* @ENCRYPT, align 4
  %353 = load i32, i32* @sec, align 4
  %354 = load i32, i32* @speed_template_8_32, align 4
  %355 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %352, i32 %353, i32* null, i32 0, i32 %354)
  %356 = load i32, i32* @DECRYPT, align 4
  %357 = load i32, i32* @sec, align 4
  %358 = load i32, i32* @speed_template_8_32, align 4
  %359 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %356, i32 %357, i32* null, i32 0, i32 %358)
  %360 = load i32, i32* @ENCRYPT, align 4
  %361 = load i32, i32* @sec, align 4
  %362 = load i32, i32* @speed_template_8_32, align 4
  %363 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %360, i32 %361, i32* null, i32 0, i32 %362)
  %364 = load i32, i32* @DECRYPT, align 4
  %365 = load i32, i32* @sec, align 4
  %366 = load i32, i32* @speed_template_8_32, align 4
  %367 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %364, i32 %365, i32* null, i32 0, i32 %366)
  br label %597

368:                                              ; preds = %1
  %369 = load i32, i32* @ENCRYPT, align 4
  %370 = load i32, i32* @sec, align 4
  %371 = load i32, i32* @speed_template_8, align 4
  %372 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %369, i32 %370, i32* null, i32 0, i32 %371)
  %373 = load i32, i32* @DECRYPT, align 4
  %374 = load i32, i32* @sec, align 4
  %375 = load i32, i32* @speed_template_8, align 4
  %376 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %373, i32 %374, i32* null, i32 0, i32 %375)
  %377 = load i32, i32* @ENCRYPT, align 4
  %378 = load i32, i32* @sec, align 4
  %379 = load i32, i32* @speed_template_8, align 4
  %380 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %377, i32 %378, i32* null, i32 0, i32 %379)
  %381 = load i32, i32* @DECRYPT, align 4
  %382 = load i32, i32* @sec, align 4
  %383 = load i32, i32* @speed_template_8, align 4
  %384 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %381, i32 %382, i32* null, i32 0, i32 %383)
  br label %597

385:                                              ; preds = %1
  %386 = load i32, i32* @ENCRYPT, align 4
  %387 = load i32, i32* @sec, align 4
  %388 = load i32, i32* @speed_template_16_24_32, align 4
  %389 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %386, i32 %387, i32* null, i32 0, i32 %388)
  %390 = load i32, i32* @DECRYPT, align 4
  %391 = load i32, i32* @sec, align 4
  %392 = load i32, i32* @speed_template_16_24_32, align 4
  %393 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 %390, i32 %391, i32* null, i32 0, i32 %392)
  %394 = load i32, i32* @ENCRYPT, align 4
  %395 = load i32, i32* @sec, align 4
  %396 = load i32, i32* @speed_template_16_24_32, align 4
  %397 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 %394, i32 %395, i32* null, i32 0, i32 %396)
  %398 = load i32, i32* @DECRYPT, align 4
  %399 = load i32, i32* @sec, align 4
  %400 = load i32, i32* @speed_template_16_24_32, align 4
  %401 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i64 0, i64 0), i32 %398, i32 %399, i32* null, i32 0, i32 %400)
  br label %597

402:                                              ; preds = %1
  %403 = load i32, i32* @ENCRYPT, align 4
  %404 = load i32, i32* @sec, align 4
  %405 = load i32, i32* @speed_template_16_32, align 4
  %406 = call i32 @test_cipher_speed(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i32 %403, i32 %404, i32* null, i32 0, i32 %405)
  br label %597

407:                                              ; preds = %1, %1
  %408 = load i32, i32* @sec, align 4
  %409 = load i32, i32* @generic_hash_speed_template, align 4
  %410 = call i32 @test_hash_speed(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %408, i32 %409)
  %411 = load i32, i32* @mode, align 4
  %412 = icmp sgt i32 %411, 300
  br i1 %412, label %413, label %417

413:                                              ; preds = %407
  %414 = load i32, i32* @mode, align 4
  %415 = icmp slt i32 %414, 400
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  br label %597

417:                                              ; preds = %413, %407
  br label %418

418:                                              ; preds = %1, %417
  %419 = load i32, i32* @sec, align 4
  %420 = load i32, i32* @generic_hash_speed_template, align 4
  %421 = call i32 @test_hash_speed(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %419, i32 %420)
  %422 = load i32, i32* @mode, align 4
  %423 = icmp sgt i32 %422, 300
  br i1 %423, label %424, label %428

424:                                              ; preds = %418
  %425 = load i32, i32* @mode, align 4
  %426 = icmp slt i32 %425, 400
  br i1 %426, label %427, label %428

427:                                              ; preds = %424
  br label %597

428:                                              ; preds = %424, %418
  br label %429

429:                                              ; preds = %1, %428
  %430 = load i32, i32* @sec, align 4
  %431 = load i32, i32* @generic_hash_speed_template, align 4
  %432 = call i32 @test_hash_speed(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %430, i32 %431)
  %433 = load i32, i32* @mode, align 4
  %434 = icmp sgt i32 %433, 300
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  %436 = load i32, i32* @mode, align 4
  %437 = icmp slt i32 %436, 400
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  br label %597

439:                                              ; preds = %435, %429
  br label %440

440:                                              ; preds = %1, %439
  %441 = load i32, i32* @sec, align 4
  %442 = load i32, i32* @generic_hash_speed_template, align 4
  %443 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %441, i32 %442)
  %444 = load i32, i32* @mode, align 4
  %445 = icmp sgt i32 %444, 300
  br i1 %445, label %446, label %450

446:                                              ; preds = %440
  %447 = load i32, i32* @mode, align 4
  %448 = icmp slt i32 %447, 400
  br i1 %448, label %449, label %450

449:                                              ; preds = %446
  br label %597

450:                                              ; preds = %446, %440
  br label %451

451:                                              ; preds = %1, %450
  %452 = load i32, i32* @sec, align 4
  %453 = load i32, i32* @generic_hash_speed_template, align 4
  %454 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %452, i32 %453)
  %455 = load i32, i32* @mode, align 4
  %456 = icmp sgt i32 %455, 300
  br i1 %456, label %457, label %461

457:                                              ; preds = %451
  %458 = load i32, i32* @mode, align 4
  %459 = icmp slt i32 %458, 400
  br i1 %459, label %460, label %461

460:                                              ; preds = %457
  br label %597

461:                                              ; preds = %457, %451
  br label %462

462:                                              ; preds = %1, %461
  %463 = load i32, i32* @sec, align 4
  %464 = load i32, i32* @generic_hash_speed_template, align 4
  %465 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %463, i32 %464)
  %466 = load i32, i32* @mode, align 4
  %467 = icmp sgt i32 %466, 300
  br i1 %467, label %468, label %472

468:                                              ; preds = %462
  %469 = load i32, i32* @mode, align 4
  %470 = icmp slt i32 %469, 400
  br i1 %470, label %471, label %472

471:                                              ; preds = %468
  br label %597

472:                                              ; preds = %468, %462
  br label %473

473:                                              ; preds = %1, %472
  %474 = load i32, i32* @sec, align 4
  %475 = load i32, i32* @generic_hash_speed_template, align 4
  %476 = call i32 @test_hash_speed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i32 %474, i32 %475)
  %477 = load i32, i32* @mode, align 4
  %478 = icmp sgt i32 %477, 300
  br i1 %478, label %479, label %483

479:                                              ; preds = %473
  %480 = load i32, i32* @mode, align 4
  %481 = icmp slt i32 %480, 400
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  br label %597

483:                                              ; preds = %479, %473
  br label %484

484:                                              ; preds = %1, %483
  %485 = load i32, i32* @sec, align 4
  %486 = load i32, i32* @generic_hash_speed_template, align 4
  %487 = call i32 @test_hash_speed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 %485, i32 %486)
  %488 = load i32, i32* @mode, align 4
  %489 = icmp sgt i32 %488, 300
  br i1 %489, label %490, label %494

490:                                              ; preds = %484
  %491 = load i32, i32* @mode, align 4
  %492 = icmp slt i32 %491, 400
  br i1 %492, label %493, label %494

493:                                              ; preds = %490
  br label %597

494:                                              ; preds = %490, %484
  br label %495

495:                                              ; preds = %1, %494
  %496 = load i32, i32* @sec, align 4
  %497 = load i32, i32* @generic_hash_speed_template, align 4
  %498 = call i32 @test_hash_speed(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %496, i32 %497)
  %499 = load i32, i32* @mode, align 4
  %500 = icmp sgt i32 %499, 300
  br i1 %500, label %501, label %505

501:                                              ; preds = %495
  %502 = load i32, i32* @mode, align 4
  %503 = icmp slt i32 %502, 400
  br i1 %503, label %504, label %505

504:                                              ; preds = %501
  br label %597

505:                                              ; preds = %501, %495
  br label %506

506:                                              ; preds = %1, %505
  %507 = load i32, i32* @sec, align 4
  %508 = load i32, i32* @generic_hash_speed_template, align 4
  %509 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 %507, i32 %508)
  %510 = load i32, i32* @mode, align 4
  %511 = icmp sgt i32 %510, 300
  br i1 %511, label %512, label %516

512:                                              ; preds = %506
  %513 = load i32, i32* @mode, align 4
  %514 = icmp slt i32 %513, 400
  br i1 %514, label %515, label %516

515:                                              ; preds = %512
  br label %597

516:                                              ; preds = %512, %506
  br label %517

517:                                              ; preds = %1, %516
  %518 = load i32, i32* @sec, align 4
  %519 = load i32, i32* @generic_hash_speed_template, align 4
  %520 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i32 %518, i32 %519)
  %521 = load i32, i32* @mode, align 4
  %522 = icmp sgt i32 %521, 300
  br i1 %522, label %523, label %527

523:                                              ; preds = %517
  %524 = load i32, i32* @mode, align 4
  %525 = icmp slt i32 %524, 400
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  br label %597

527:                                              ; preds = %523, %517
  br label %528

528:                                              ; preds = %1, %527
  %529 = load i32, i32* @sec, align 4
  %530 = load i32, i32* @generic_hash_speed_template, align 4
  %531 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 %529, i32 %530)
  %532 = load i32, i32* @mode, align 4
  %533 = icmp sgt i32 %532, 300
  br i1 %533, label %534, label %538

534:                                              ; preds = %528
  %535 = load i32, i32* @mode, align 4
  %536 = icmp slt i32 %535, 400
  br i1 %536, label %537, label %538

537:                                              ; preds = %534
  br label %597

538:                                              ; preds = %534, %528
  br label %539

539:                                              ; preds = %1, %538
  %540 = load i32, i32* @sec, align 4
  %541 = load i32, i32* @generic_hash_speed_template, align 4
  %542 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32 %540, i32 %541)
  %543 = load i32, i32* @mode, align 4
  %544 = icmp sgt i32 %543, 300
  br i1 %544, label %545, label %549

545:                                              ; preds = %539
  %546 = load i32, i32* @mode, align 4
  %547 = icmp slt i32 %546, 400
  br i1 %547, label %548, label %549

548:                                              ; preds = %545
  br label %597

549:                                              ; preds = %545, %539
  br label %550

550:                                              ; preds = %1, %549
  %551 = load i32, i32* @sec, align 4
  %552 = load i32, i32* @generic_hash_speed_template, align 4
  %553 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0), i32 %551, i32 %552)
  %554 = load i32, i32* @mode, align 4
  %555 = icmp sgt i32 %554, 300
  br i1 %555, label %556, label %560

556:                                              ; preds = %550
  %557 = load i32, i32* @mode, align 4
  %558 = icmp slt i32 %557, 400
  br i1 %558, label %559, label %560

559:                                              ; preds = %556
  br label %597

560:                                              ; preds = %556, %550
  br label %561

561:                                              ; preds = %1, %560
  %562 = load i32, i32* @sec, align 4
  %563 = load i32, i32* @generic_hash_speed_template, align 4
  %564 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), i32 %562, i32 %563)
  %565 = load i32, i32* @mode, align 4
  %566 = icmp sgt i32 %565, 300
  br i1 %566, label %567, label %571

567:                                              ; preds = %561
  %568 = load i32, i32* @mode, align 4
  %569 = icmp slt i32 %568, 400
  br i1 %569, label %570, label %571

570:                                              ; preds = %567
  br label %597

571:                                              ; preds = %567, %561
  br label %572

572:                                              ; preds = %1, %571
  %573 = load i32, i32* @sec, align 4
  %574 = load i32, i32* @generic_hash_speed_template, align 4
  %575 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0), i32 %573, i32 %574)
  %576 = load i32, i32* @mode, align 4
  %577 = icmp sgt i32 %576, 300
  br i1 %577, label %578, label %582

578:                                              ; preds = %572
  %579 = load i32, i32* @mode, align 4
  %580 = icmp slt i32 %579, 400
  br i1 %580, label %581, label %582

581:                                              ; preds = %578
  br label %597

582:                                              ; preds = %578, %572
  br label %583

583:                                              ; preds = %1, %582
  %584 = load i32, i32* @sec, align 4
  %585 = load i32, i32* @generic_hash_speed_template, align 4
  %586 = call i32 @test_hash_speed(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i32 %584, i32 %585)
  %587 = load i32, i32* @mode, align 4
  %588 = icmp sgt i32 %587, 300
  br i1 %588, label %589, label %593

589:                                              ; preds = %583
  %590 = load i32, i32* @mode, align 4
  %591 = icmp slt i32 %590, 400
  br i1 %591, label %592, label %593

592:                                              ; preds = %589
  br label %597

593:                                              ; preds = %589, %583
  br label %594

594:                                              ; preds = %1, %593
  br label %597

595:                                              ; preds = %1
  %596 = call i32 (...) @test_available()
  br label %597

597:                                              ; preds = %1, %595, %594, %592, %581, %570, %559, %548, %537, %526, %515, %504, %493, %482, %471, %460, %449, %438, %427, %416, %402, %385, %368, %351, %334, %309, %276, %272, %268, %264, %260, %256, %252, %248, %244, %240, %236, %232, %228, %224, %220, %216, %212, %208, %204, %200, %196, %192, %188, %184, %180, %173, %169, %165, %161, %157, %153, %146, %142, %138, %134, %130, %126, %122, %118, %114, %110, %106, %102, %98, %94, %90, %86, %67, %63, %56, %49, %45, %41, %34, %27, %23, %19, %18
  %598 = load i32, i32* %4, align 4
  ret i32 %598
}

declare dso_local i32 @tcrypt_test(i8*) #1

declare dso_local i32 @test_cipher_speed(i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @test_hash_speed(i8*, i32, i32) #1

declare dso_local i32 @test_available(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
