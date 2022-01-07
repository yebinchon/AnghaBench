; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_pd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_pd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { %struct.pd_uinfo*, %struct.ce_pd* }
%struct.pd_uinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ce_pd = type { i32 }

@CRYPTO_ALG_TYPE_ABLKCIPHER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto4xx_device*, i32)* @crypto4xx_pd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_pd_done(%struct.crypto4xx_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto4xx_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ce_pd*, align 8
  %7 = alloca %struct.pd_uinfo*, align 8
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %9 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %8, i32 0, i32 1
  %10 = load %struct.ce_pd*, %struct.ce_pd** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = getelementptr inbounds %struct.ce_pd, %struct.ce_pd* %10, i64 %13
  store %struct.ce_pd* %14, %struct.ce_pd** %6, align 8
  %15 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %16 = getelementptr inbounds %struct.crypto4xx_device, %struct.crypto4xx_device* %15, i32 0, i32 0
  %17 = load %struct.pd_uinfo*, %struct.pd_uinfo** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %17, i64 %20
  store %struct.pd_uinfo* %21, %struct.pd_uinfo** %7, align 8
  %22 = load %struct.pd_uinfo*, %struct.pd_uinfo** %7, align 8
  %23 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @crypto_tfm_alg_type(i32 %26)
  %28 = load i64, i64* @CRYPTO_ALG_TYPE_ABLKCIPHER, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %32 = load %struct.pd_uinfo*, %struct.pd_uinfo** %7, align 8
  %33 = load %struct.ce_pd*, %struct.ce_pd** %6, align 8
  %34 = call i32 @crypto4xx_ablkcipher_done(%struct.crypto4xx_device* %31, %struct.pd_uinfo* %32, %struct.ce_pd* %33)
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %4, align 8
  %37 = load %struct.pd_uinfo*, %struct.pd_uinfo** %7, align 8
  %38 = call i32 @crypto4xx_ahash_done(%struct.crypto4xx_device* %36, %struct.pd_uinfo* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @crypto_tfm_alg_type(i32) #1

declare dso_local i32 @crypto4xx_ablkcipher_done(%struct.crypto4xx_device*, %struct.pd_uinfo*, %struct.ce_pd*) #1

declare dso_local i32 @crypto4xx_ahash_done(%struct.crypto4xx_device*, %struct.pd_uinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
