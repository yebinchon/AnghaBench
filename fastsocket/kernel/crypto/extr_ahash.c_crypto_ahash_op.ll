; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i64 }
%struct.crypto_ahash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahash_request*, i32 (%struct.ahash_request*)*)* @crypto_ahash_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ahash_op(%struct.ahash_request* %0, i32 (%struct.ahash_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahash_request*, align 8
  %5 = alloca i32 (%struct.ahash_request*)*, align 8
  %6 = alloca %struct.crypto_ahash*, align 8
  %7 = alloca i64, align 8
  store %struct.ahash_request* %0, %struct.ahash_request** %4, align 8
  store i32 (%struct.ahash_request*)* %1, i32 (%struct.ahash_request*)** %5, align 8
  %8 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %9 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %8)
  store %struct.crypto_ahash* %9, %struct.crypto_ahash** %6, align 8
  %10 = load %struct.crypto_ahash*, %struct.crypto_ahash** %6, align 8
  %11 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %13 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %20 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %5, align 8
  %21 = call i32 @ahash_op_unaligned(%struct.ahash_request* %19, i32 (%struct.ahash_request*)* %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32 (%struct.ahash_request*)*, i32 (%struct.ahash_request*)** %5, align 8
  %24 = load %struct.ahash_request*, %struct.ahash_request** %4, align 8
  %25 = call i32 %23(%struct.ahash_request* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_op_unaligned(%struct.ahash_request*, i32 (%struct.ahash_request*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
