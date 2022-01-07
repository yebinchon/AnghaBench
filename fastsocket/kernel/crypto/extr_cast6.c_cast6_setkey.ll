; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_cast6_setkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_cast6_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.cast6_ctx = type { i32**, i32** }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @cast6_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cast6_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct.cast6_ctx*, align 8
  %12 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %14 = call %struct.cast6_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.cast6_ctx* %14, %struct.cast6_ctx** %11, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %16 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %15, i32 0, i32 0
  store i32* %16, i32** %12, align 8
  %17 = load i32, i32* %7, align 4
  %18 = urem i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %167

27:                                               ; preds = %3
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %29 = call i32 @memset(i32* %28, i32 0, i32 32)
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = call i32 @be32_to_cpu(i32 %35)
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  store i32 %36, i32* %37, align 16
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @be32_to_cpu(i32 %39)
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be32_to_cpu(i32 %47)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %51 = load i32, i32* %50, align 16
  %52 = call i32 @be32_to_cpu(i32 %51)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @be32_to_cpu(i32 %63)
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  store i32 %64, i32* %65, align 4
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %163, %27
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 12
  br i1 %68, label %69, label %166

69:                                               ; preds = %66
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 2, %71
  %73 = call i32 @W(i32* %70, i32 %72)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 2, %75
  %77 = add nsw i32 %76, 1
  %78 = call i32 @W(i32* %74, i32 %77)
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = and i32 %80, 31
  %82 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %83 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %81, i32* %89, align 4
  %90 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, 31
  %93 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %94 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %93, i32 0, i32 0
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %92, i32* %100, align 4
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %102 = load i32, i32* %101, align 16
  %103 = and i32 %102, 31
  %104 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %105 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %104, i32 0, i32 0
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %103, i32* %111, align 4
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 31
  %115 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %116 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %115, i32 0, i32 0
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %114, i32* %122, align 4
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %126 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %125, i32 0, i32 1
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %124, i32* %132, align 4
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %136 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %134, i32* %142, align 4
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %146 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %145, i32 0, i32 1
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  store i32 %144, i32* %152, align 4
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.cast6_ctx*, %struct.cast6_ctx** %11, align 8
  %156 = getelementptr inbounds %struct.cast6_ctx, %struct.cast6_ctx* %155, i32 0, i32 1
  %157 = load i32**, i32*** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  store i32 %154, i32* %162, align 4
  br label %163

163:                                              ; preds = %69
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %66

166:                                              ; preds = %66
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %20
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.cast6_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @W(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
