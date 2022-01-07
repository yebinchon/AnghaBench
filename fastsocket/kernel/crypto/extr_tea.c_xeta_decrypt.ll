; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tea.c_xeta_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tea.c_xeta_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.tea_ctx = type { i64* }

@XTEA_DELTA = common dso_local global i32 0, align 4
@XTEA_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @xeta_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xeta_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tea_ctx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %14 = call %struct.tea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.tea_ctx* %14, %struct.tea_ctx** %10, align 8
  %15 = load i32*, i32** %6, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @XTEA_DELTA, align 4
  %26 = load i32, i32* @XTEA_ROUNDS, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %31, %3
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 5
  %36 = xor i32 %33, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = xor i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.tea_ctx*, %struct.tea_ctx** %10, align 8
  %43 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 11
  %47 = and i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %41, %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @XTEA_DELTA, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 5
  %63 = xor i32 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = xor i32 %64, %65
  %67 = add nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = load %struct.tea_ctx*, %struct.tea_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.tea_ctx, %struct.tea_ctx* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, 3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %68, %76
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  br label %28

82:                                               ; preds = %28
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @cpu_to_le32(i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %88, i32* %90, align 4
  ret void
}

declare dso_local %struct.tea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
