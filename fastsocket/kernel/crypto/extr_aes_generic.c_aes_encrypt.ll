; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aes_generic.c_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aes_generic.c_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_aes_ctx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.crypto_aes_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %15 = call %struct.crypto_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.crypto_aes_ctx* %15, %struct.crypto_aes_ctx** %7, align 8
  %16 = load i32*, i32** %6, align 8
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %19 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32* %21, i32** %12, align 8
  %22 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %23 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %13, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %28, %33
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %39, %44
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %52 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %50, %55
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %56, i32* %57, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %7, align 8
  %63 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %61, %66
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp sgt i32 %69, 24
  br i1 %70, label %71, label %80

71:                                               ; preds = %3
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @f_nround(i32* %72, i32* %73, i32* %74)
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @f_nround(i32* %76, i32* %77, i32* %78)
  br label %80

80:                                               ; preds = %71, %3
  %81 = load i32, i32* %13, align 4
  %82 = icmp sgt i32 %81, 16
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @f_nround(i32* %84, i32* %85, i32* %86)
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @f_nround(i32* %88, i32* %89, i32* %90)
  br label %92

92:                                               ; preds = %83, %80
  %93 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @f_nround(i32* %93, i32* %94, i32* %95)
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @f_nround(i32* %97, i32* %98, i32* %99)
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %103 = load i32*, i32** %12, align 8
  %104 = call i32 @f_nround(i32* %101, i32* %102, i32* %103)
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @f_nround(i32* %105, i32* %106, i32* %107)
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %111 = load i32*, i32** %12, align 8
  %112 = call i32 @f_nround(i32* %109, i32* %110, i32* %111)
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @f_nround(i32* %113, i32* %114, i32* %115)
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @f_nround(i32* %117, i32* %118, i32* %119)
  %121 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @f_nround(i32* %121, i32* %122, i32* %123)
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %127 = load i32*, i32** %12, align 8
  %128 = call i32 @f_nround(i32* %125, i32* %126, i32* %127)
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %131 = load i32*, i32** %12, align 8
  %132 = call i32 @f_lround(i32* %129, i32* %130, i32* %131)
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %134 = load i32, i32* %133, align 16
  %135 = call i32 @cpu_to_le32(i32 %134)
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @cpu_to_le32(i32 %139)
  %141 = load i32*, i32** %9, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @cpu_to_le32(i32 %144)
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 %145, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @cpu_to_le32(i32 %149)
  %151 = load i32*, i32** %9, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %150, i32* %152, align 4
  ret void
}

declare dso_local %struct.crypto_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @f_nround(i32*, i32*, i32*) #1

declare dso_local i32 @f_lround(i32*, i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
