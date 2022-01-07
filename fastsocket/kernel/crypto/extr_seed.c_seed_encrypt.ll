; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seed.c_seed_encrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_seed.c_seed_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.seed_ctx = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @seed_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seed_encrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.seed_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %18 = call %struct.seed_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %17)
  store %struct.seed_ctx* %18, %struct.seed_ctx** %7, align 8
  %19 = load i32*, i32** %6, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.seed_ctx*, %struct.seed_ctx** %7, align 8
  %22 = getelementptr inbounds %struct.seed_ctx, %struct.seed_ctx* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %16, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @OP(i32 %40, i32 %41, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @OP(i32 %45, i32 %46, i32 %47, i32 %48, i32 2)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @OP(i32 %50, i32 %51, i32 %52, i32 %53, i32 4)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @OP(i32 %55, i32 %56, i32 %57, i32 %58, i32 6)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @OP(i32 %60, i32 %61, i32 %62, i32 %63, i32 8)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @OP(i32 %65, i32 %66, i32 %67, i32 %68, i32 10)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @OP(i32 %70, i32 %71, i32 %72, i32 %73, i32 12)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @OP(i32 %75, i32 %76, i32 %77, i32 %78, i32 14)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @OP(i32 %80, i32 %81, i32 %82, i32 %83, i32 16)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @OP(i32 %85, i32 %86, i32 %87, i32 %88, i32 18)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @OP(i32 %90, i32 %91, i32 %92, i32 %93, i32 20)
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @OP(i32 %95, i32 %96, i32 %97, i32 %98, i32 22)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @OP(i32 %100, i32 %101, i32 %102, i32 %103, i32 24)
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @OP(i32 %105, i32 %106, i32 %107, i32 %108, i32 26)
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @OP(i32 %110, i32 %111, i32 %112, i32 %113, i32 28)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @OP(i32 %115, i32 %116, i32 %117, i32 %118, i32 30)
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @cpu_to_be32(i32 %120)
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @cpu_to_be32(i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @cpu_to_be32(i32 %128)
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @cpu_to_be32(i32 %132)
  %134 = load i32*, i32** %9, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  store i32 %133, i32* %135, align 4
  ret void
}

declare dso_local %struct.seed_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @OP(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
