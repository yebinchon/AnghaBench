; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_hmac.c_hmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32, %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @hmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shash_desc*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %11 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %10, i32 0, i32 1
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  store %struct.crypto_shash* %12, %struct.crypto_shash** %5, align 8
  %13 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %14 = call i32 @crypto_shash_digestsize(%struct.crypto_shash* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %16 = call i32 @crypto_shash_statesize(%struct.crypto_shash* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %18 = call i8* @crypto_shash_ctx_aligned(%struct.crypto_shash* %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  store i8* %21, i8** %8, align 8
  %22 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %23 = call %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc* %22)
  store %struct.shash_desc* %23, %struct.shash_desc** %9, align 8
  %24 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %25 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %30 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @crypto_shash_final(%struct.shash_desc* %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %51

36:                                               ; preds = %2
  %37 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @crypto_shash_import(%struct.shash_desc* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %49

42:                                               ; preds = %36
  %43 = load %struct.shash_desc*, %struct.shash_desc** %9, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @crypto_shash_finup(%struct.shash_desc* %43, i32* %44, i32 %45, i32* %46)
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %42, %41
  %50 = phi i64 [ %39, %41 ], [ %48, %42 ]
  br label %51

51:                                               ; preds = %49, %35
  %52 = phi i64 [ %33, %35 ], [ %50, %49 ]
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @crypto_shash_digestsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_statesize(%struct.crypto_shash*) #1

declare dso_local i8* @crypto_shash_ctx_aligned(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i64 @crypto_shash_final(%struct.shash_desc*, i32*) #1

declare dso_local i64 @crypto_shash_import(%struct.shash_desc*, i8*) #1

declare dso_local i32 @crypto_shash_finup(%struct.shash_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
