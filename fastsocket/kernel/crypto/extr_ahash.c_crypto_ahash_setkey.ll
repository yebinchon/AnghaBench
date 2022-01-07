; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_ahash = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_ahash_setkey(%struct.crypto_ahash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.crypto_ahash* %0, %struct.crypto_ahash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %10 = call i64 @crypto_ahash_alignmask(%struct.crypto_ahash* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = load i64, i64* %8, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ahash_setkey_unaligned(%struct.crypto_ahash* %17, i32* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %30

21:                                               ; preds = %3
  %22 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %23 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.crypto_ahash*, i32*, i32)**
  %25 = load i32 (%struct.crypto_ahash*, i32*, i32)*, i32 (%struct.crypto_ahash*, i32*, i32)** %24, align 8
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 %25(%struct.crypto_ahash* %26, i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @crypto_ahash_alignmask(%struct.crypto_ahash*) #1

declare dso_local i32 @ahash_setkey_unaligned(%struct.crypto_ahash*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
