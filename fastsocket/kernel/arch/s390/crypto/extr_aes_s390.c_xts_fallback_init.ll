; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_fallback_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/crypto/extr_aes_s390.c_xts_fallback_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.s390_xts_ctx = type { i32 }

@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@CRYPTO_ALG_NEED_FALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Allocating XTS fallback algorithm %s failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @xts_fallback_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_fallback_init(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s390_xts_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %12 = call %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %11)
  store %struct.s390_xts_ctx* %12, %struct.s390_xts_ctx** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %15 = load i32, i32* @CRYPTO_ALG_NEED_FALLBACK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @crypto_alloc_blkcipher(i8* %13, i32 0, i32 %16)
  %18 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_alloc_blkcipher(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
