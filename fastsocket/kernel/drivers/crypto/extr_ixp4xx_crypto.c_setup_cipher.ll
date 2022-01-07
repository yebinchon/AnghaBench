; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_cipher.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/extr_ixp4xx_crypto.c_setup_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ix_sa_dir = type { i32, i32, i32* }
%struct.ixp_ctx = type { %struct.ix_sa_dir, %struct.ix_sa_dir }

@NPE_OP_CRYPT_ENCRYPT = common dso_local global i32 0, align 4
@MOD_AES = common dso_local global i32 0, align 4
@MOD_AES128 = common dso_local global i32 0, align 4
@KEYLEN_128 = common dso_local global i32 0, align 4
@MOD_AES192 = common dso_local global i32 0, align 4
@KEYLEN_192 = common dso_local global i32 0, align 4
@MOD_AES256 = common dso_local global i32 0, align 4
@KEYLEN_256 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MOD_3DES = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_SCHED = common dso_local global i32 0, align 4
@DES_EXPKEY_WORDS = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@DES3_EDE_KEY_SIZE = common dso_local global i32 0, align 4
@NPE_OP_CRYPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32*, i32)* @setup_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_cipher(%struct.crypto_tfm* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ix_sa_dir*, align 8
  %14 = alloca %struct.ixp_ctx*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %20 = call %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %19)
  store %struct.ixp_ctx* %20, %struct.ixp_ctx** %14, align 8
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %22 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %21, i32 0, i32 0
  store i32* %22, i32** %15, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load %struct.ixp_ctx*, %struct.ixp_ctx** %14, align 8
  %27 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %26, i32 0, i32 1
  br label %31

28:                                               ; preds = %4
  %29 = load %struct.ixp_ctx*, %struct.ixp_ctx** %14, align 8
  %30 = getelementptr inbounds %struct.ixp_ctx, %struct.ixp_ctx* %29, i32 0, i32 0
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi %struct.ix_sa_dir* [ %27, %25 ], [ %30, %28 ]
  store %struct.ix_sa_dir* %32, %struct.ix_sa_dir** %13, align 8
  %33 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %34 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %40 = call i32 @cipher_cfg_enc(%struct.crypto_tfm* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @NPE_OP_CRYPT_ENCRYPT, align 4
  %42 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %43 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %48 = call i32 @cipher_cfg_dec(%struct.crypto_tfm* %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %38
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MOD_AES, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %68 [
    i32 16, label %56
    i32 24, label %60
    i32 32, label %64
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* @MOD_AES128, align 4
  %58 = load i32, i32* @KEYLEN_128, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %12, align 4
  br label %75

60:                                               ; preds = %54
  %61 = load i32, i32* @MOD_AES192, align 4
  %62 = load i32, i32* @KEYLEN_192, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %12, align 4
  br label %75

64:                                               ; preds = %54
  %65 = load i32, i32* @MOD_AES256, align 4
  %66 = load i32, i32* @KEYLEN_256, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %12, align 4
  br label %75

68:                                               ; preds = %54
  %69 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %200

75:                                               ; preds = %64, %60, %56
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %149

79:                                               ; preds = %49
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MOD_3DES, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %133

84:                                               ; preds = %79
  %85 = load i32*, i32** %8, align 8
  store i32* %85, i32** %16, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = load i32*, i32** %16, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %16, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %95, %98
  %100 = or i32 %92, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %84
  %103 = load i32*, i32** %16, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %105, %108
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %112, %115
  %117 = or i32 %109, %116
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %102, %84
  %121 = phi i1 [ true, %84 ], [ %119, %102 ]
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_SCHED, align 4
  %127 = load i32*, i32** %15, align 8
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %200

132:                                              ; preds = %120
  br label %148

133:                                              ; preds = %79
  %134 = load i32, i32* @DES_EXPKEY_WORDS, align 4
  %135 = zext i32 %134 to i64
  %136 = call i8* @llvm.stacksave()
  store i8* %136, i8** %17, align 8
  %137 = alloca i32, i64 %135, align 16
  store i64 %135, i64* %18, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = call i64 @des_ekey(i32* %137, i32* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %141, %133
  %147 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %147)
  br label %148

148:                                              ; preds = %146, %132
  br label %149

149:                                              ; preds = %148, %75
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @cpu_to_be32(i32 %150)
  %152 = load i32*, i32** %10, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  store i32* %154, i32** %10, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = load i32*, i32** %8, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @memcpy(i32* %155, i32* %156, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %149
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @MOD_AES, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %177, label %167

167:                                              ; preds = %162
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @memset(i32* %171, i32 0, i32 %174)
  %176 = load i32, i32* @DES3_EDE_KEY_SIZE, align 4
  store i32 %176, i32* %9, align 4
  br label %177

177:                                              ; preds = %167, %162, %149
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 4, %179
  %181 = trunc i64 %180 to i32
  %182 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %183 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* @NPE_OP_CRYPT_ENABLE, align 4
  %185 = load %struct.ix_sa_dir*, %struct.ix_sa_dir** %13, align 8
  %186 = getelementptr inbounds %struct.ix_sa_dir, %struct.ix_sa_dir* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* @MOD_AES, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %177
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %198 = call i32 @gen_rev_aes_key(%struct.crypto_tfm* %197)
  store i32 %198, i32* %5, align 4
  br label %200

199:                                              ; preds = %193, %177
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %199, %196, %125, %68
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local %struct.ixp_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @cipher_cfg_enc(%struct.crypto_tfm*) #1

declare dso_local i32 @cipher_cfg_dec(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @des_ekey(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gen_rev_aes_key(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
