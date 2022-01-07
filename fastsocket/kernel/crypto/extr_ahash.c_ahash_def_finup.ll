; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_def_finup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_def_finup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.ahash_request_priv*, %struct.TYPE_2__, i32 }
%struct.ahash_request_priv = type { i64, %struct.ahash_request*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ahash_request*, i32 }
%struct.crypto_ahash = type { i32 (%struct.ahash_request.0*)* }
%struct.ahash_request.0 = type opaque

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ahash_def_finup_done1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*)* @ahash_def_finup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_def_finup(%struct.ahash_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ahash_request_priv*, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %4, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %11 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %13 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @ahash_align_buffer_size(i32 %14, i64 %15)
  %17 = add i64 24, %16
  %18 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %19 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call %struct.ahash_request_priv* @kmalloc(i64 %17, i32 %30)
  store %struct.ahash_request_priv* %31, %struct.ahash_request_priv** %7, align 8
  %32 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %33 = icmp ne %struct.ahash_request_priv* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %83

37:                                               ; preds = %29
  %38 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %39 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %42 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %44 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %48 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %50 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.ahash_request*, %struct.ahash_request** %51, align 8
  %53 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %54 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %53, i32 0, i32 1
  store %struct.ahash_request* %52, %struct.ahash_request** %54, align 8
  %55 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %56 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  %61 = call i32 @PTR_ALIGN(i32* %58, i64 %60)
  %62 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %63 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @ahash_def_finup_done1, align 4
  %65 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %66 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  store i32 %64, i32* %67, align 8
  %68 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %69 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %70 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store %struct.ahash_request* %68, %struct.ahash_request** %71, align 8
  %72 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %7, align 8
  %73 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %74 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %73, i32 0, i32 0
  store %struct.ahash_request_priv* %72, %struct.ahash_request_priv** %74, align 8
  %75 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %76 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %77 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %76, i32 0, i32 0
  %78 = load i32 (%struct.ahash_request.0*)*, i32 (%struct.ahash_request.0*)** %77, align 8
  %79 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %80 = bitcast %struct.ahash_request* %79 to %struct.ahash_request.0*
  %81 = call i32 %78(%struct.ahash_request.0* %80)
  %82 = call i32 @ahash_def_finup_finish1(%struct.ahash_request* %75, i32 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %37, %34
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request_priv* @kmalloc(i64, i32) #1

declare dso_local i64 @ahash_align_buffer_size(i32, i64) #1

declare dso_local i32 @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @ahash_def_finup_finish1(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
