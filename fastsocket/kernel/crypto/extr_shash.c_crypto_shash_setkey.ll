; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_shash_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_crypto_shash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.shash_alg = type { i32 (%struct.crypto_shash.0*, i32*, i32)* }
%struct.crypto_shash.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_shash_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shash_alg*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash* %10)
  store %struct.shash_alg* %11, %struct.shash_alg** %8, align 8
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %13 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %12)
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = load i64, i64* %9, align 8
  %17 = and i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @shash_setkey_unaligned(%struct.crypto_shash* %20, i32* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.shash_alg*, %struct.shash_alg** %8, align 8
  %26 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %25, i32 0, i32 0
  %27 = load i32 (%struct.crypto_shash.0*, i32*, i32)*, i32 (%struct.crypto_shash.0*, i32*, i32)** %26, align 8
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %29 = bitcast %struct.crypto_shash* %28 to %struct.crypto_shash.0*
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 %27(%struct.crypto_shash.0* %29, i32* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %24, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.shash_alg* @crypto_shash_alg(%struct.crypto_shash*) #1

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local i32 @shash_setkey_unaligned(%struct.crypto_shash*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
