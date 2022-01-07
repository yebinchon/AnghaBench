; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_op_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_ahash_op_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { %struct.ahash_request_priv*, %struct.TYPE_2__, i32 }
%struct.ahash_request_priv = type { i64, %struct.ahash_request*, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.ahash_request*, i32 }
%struct.crypto_ahash = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ahash_op_unaligned_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32 (%struct.ahash_request*)*)* @ahash_op_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahash_op_unaligned(%struct.ahash_request* %0, i32 (%struct.ahash_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32 (%struct.ahash_request*)*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ahash_request_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 (%struct.ahash_request*)* %1, i32 (%struct.ahash_request*)** %5, align 8
  %11 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %12 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %11)
  store %struct.crypto_ahash* %12, %struct.crypto_ahash** %6, align 8
  %13 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %14 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %16 = call i32 @crypto_ahash_digestsize(%struct.crypto_ahash* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @ahash_align_buffer_size(i32 %17, i64 %18)
  %20 = add i64 24, %19
  %21 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %22 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @GFP_KERNEL, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call %struct.ahash_request_priv* @kmalloc(i64 %20, i32 %33)
  store %struct.ahash_request_priv* %34, %struct.ahash_request_priv** %9, align 8
  %35 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %36 = icmp ne %struct.ahash_request_priv* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %85

40:                                               ; preds = %32
  %41 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %42 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %45 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %47 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %51 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %53 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.ahash_request*, %struct.ahash_request** %54, align 8
  %56 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %57 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %56, i32 0, i32 1
  store %struct.ahash_request* %55, %struct.ahash_request** %57, align 8
  %58 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %59 = getelementptr inbounds %struct.ahash_request_priv, %struct.ahash_request_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = call i32 @PTR_ALIGN(i32* %61, i64 %63)
  %65 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %66 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @ahash_op_unaligned_done, align 4
  %68 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %69 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 8
  %71 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %72 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %73 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store %struct.ahash_request* %71, %struct.ahash_request** %74, align 8
  %75 = load %struct.ahash_request_priv*, %struct.ahash_request_priv** %9, align 8
  %76 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %77 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %76, i32 0, i32 0
  store %struct.ahash_request_priv* %75, %struct.ahash_request_priv** %77, align 8
  %78 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %5, align 8
  %79 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %80 = call i32 %78(%struct.ahash_request* %79)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ahash_op_unaligned_finish(%struct.ahash_request* %81, i32 %82)
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %40, %37
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_ahash_digestsize(%struct.crypto_ahash*) #1

declare dso_local %struct.ahash_request_priv* @kmalloc(i64, i32) #1

declare dso_local i64 @ahash_align_buffer_size(i32, i64) #1

declare dso_local i32 @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @ahash_op_unaligned_finish(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
