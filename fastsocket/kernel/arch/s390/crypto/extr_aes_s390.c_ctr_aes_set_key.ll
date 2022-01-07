; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ctr_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_ctr_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_aes_ctx = type { i32, i32 }

@KMCTR_AES_128_ENCRYPT = common dso_local global i32 0, align 4
@KMCTR_AES_128_DECRYPT = common dso_local global i32 0, align 4
@KMCTR_AES_192_ENCRYPT = common dso_local global i32 0, align 4
@KMCTR_AES_192_DECRYPT = common dso_local global i32 0, align 4
@KMCTR_AES_256_ENCRYPT = common dso_local global i32 0, align 4
@KMCTR_AES_256_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ctr_aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s390_aes_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %9 = call %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %8)
  store %struct.s390_aes_ctx* %9, %struct.s390_aes_ctx** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %32 [
    i32 16, label %11
    i32 24, label %18
    i32 32, label %25
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @KMCTR_AES_128_ENCRYPT, align 4
  %13 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @KMCTR_AES_128_DECRYPT, align 4
  %16 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32, i32* @KMCTR_AES_192_ENCRYPT, align 4
  %20 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @KMCTR_AES_192_DECRYPT, align 4
  %23 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @KMCTR_AES_256_ENCRYPT, align 4
  %27 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @KMCTR_AES_256_DECRYPT, align 4
  %30 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %3, %25, %18, %11
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @aes_set_key(%struct.crypto_tfm* %33, i32* %34, i32 %35)
  ret i32 %36
}

declare dso_local %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_set_key(%struct.crypto_tfm*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
