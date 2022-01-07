; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_arc4.c_arc4_crypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_arc4.c_arc4_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.arc4_ctx = type { i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i64*, i64*)* @arc4_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc4_crypt(%struct.crypto_tfm* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.arc4_ctx*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.arc4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.arc4_ctx* %14, %struct.arc4_ctx** %7, align 8
  %15 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %16 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %8, align 8
  %18 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %28, %29
  %31 = and i64 %30, 255
  store i64 %31, i64* %10, align 8
  %32 = load i64*, i64** %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 1
  %46 = and i64 %45, 255
  store i64 %46, i64* %9, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  %53 = and i64 %52, 255
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %48, %55
  %57 = load i64*, i64** %5, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %61 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.arc4_ctx*, %struct.arc4_ctx** %7, align 8
  %64 = getelementptr inbounds %struct.arc4_ctx, %struct.arc4_ctx* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  ret void
}

declare dso_local %struct.arc4_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
