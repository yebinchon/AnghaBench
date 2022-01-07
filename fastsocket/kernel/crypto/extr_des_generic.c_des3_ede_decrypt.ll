; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des3_ede_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_des_generic.c_des3_ede_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des3_ede_ctx = type { i32* }

@DES3_EDE_EXPKEY_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @des3_ede_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des3_ede_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.des3_ede_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %17 = call %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %16)
  store %struct.des3_ede_ctx* %17, %struct.des3_ede_ctx** %7, align 8
  %18 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.des3_ede_ctx, %struct.des3_ede_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @DES3_EDE_EXPKEY_WORDS, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = getelementptr inbounds i32, i32* %23, i64 -2
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %5, align 8
  store i32* %26, i32** %10, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @IP(i32 %35, i32 %36, i32 %37)
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %55, %3
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %58

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @ROUND(i32 %43, i32 %44, i32 %45, i32 %46, i32* %47, i32 -2)
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @ROUND(i32 %49, i32 %50, i32 %51, i32 %52, i32* %53, i32 -2)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %39

58:                                               ; preds = %39
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 8
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @ROUND(i32 %63, i32 %64, i32 %65, i32 %66, i32* %67, i32 -2)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @ROUND(i32 %69, i32 %70, i32 %71, i32 %72, i32* %73, i32 -2)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %59

78:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %95, %78
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @ROUND(i32 %83, i32 %84, i32 %85, i32 %86, i32* %87, i32 -2)
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @ROUND(i32 %89, i32 %90, i32 %91, i32 %92, i32* %93, i32 -2)
  br label %95

95:                                               ; preds = %82
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %79

98:                                               ; preds = %79
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @FP(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @cpu_to_le32(i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @cpu_to_le32(i32 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 %108, i32* %110, align 4
  ret void
}

declare dso_local %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IP(i32, i32, i32) #1

declare dso_local i32 @ROUND(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @FP(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
