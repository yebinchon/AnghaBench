; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tea.c_xtea_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tea.c_xtea_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.xtea_ctx = type { i32* }

@XTEA_DELTA = common dso_local global i32 0, align 4
@XTEA_ROUNDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @xtea_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xtea_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xtea_ctx*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @XTEA_DELTA, align 4
  %15 = load i32, i32* @XTEA_ROUNDS, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %18 = call %struct.xtea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.xtea_ctx* %18, %struct.xtea_ctx** %11, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %33, %3
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 5
  %38 = xor i32 %35, %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.xtea_ctx*, %struct.xtea_ctx** %11, align 8
  %43 = getelementptr inbounds %struct.xtea_ctx, %struct.xtea_ctx* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %41, %49
  %51 = xor i32 %40, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @XTEA_DELTA, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 4
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 5
  %61 = xor i32 %58, %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.xtea_ctx*, %struct.xtea_ctx** %11, align 8
  %66 = getelementptr inbounds %struct.xtea_ctx, %struct.xtea_ctx* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, 11
  %70 = and i32 %69, 3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %64, %73
  %75 = xor i32 %63, %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %29

78:                                               ; preds = %29
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @cpu_to_le32(i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 %84, i32* %86, align 4
  ret void
}

declare dso_local %struct.xtea_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
