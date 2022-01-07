; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_setkey_unaligned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_setkey_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.aead_alg = type { i32 (%struct.crypto_aead*, i32*, i32)* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @setkey_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setkey_unaligned(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aead_alg*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %15 = call %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead* %14)
  store %struct.aead_alg* %15, %struct.aead_alg** %8, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i32* @kmalloc(i64 %22, i32 %23)
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %3
  %31 = load i32*, i32** %11, align 8
  %32 = ptrtoint i32* %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 1
  %35 = call i64 @ALIGN(i64 %32, i64 %34)
  %36 = inttoptr i64 %35 to i32*
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %42 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %41, i32 0, i32 0
  %43 = load i32 (%struct.crypto_aead*, i32*, i32)*, i32 (%struct.crypto_aead*, i32*, i32)** %42, align 8
  %44 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 %43(%struct.crypto_aead* %44, i32* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @memset(i32* %48, i32 0, i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %30, %27
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.aead_alg* @crypto_aead_alg(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
