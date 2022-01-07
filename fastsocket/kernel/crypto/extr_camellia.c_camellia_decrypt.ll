; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_decrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_camellia.c_camellia_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.camellia_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_tfm*, i32*, i32*)* @camellia_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camellia_decrypt(%struct.crypto_tfm* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.camellia_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [4 x i32], align 16
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %12 = call %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %11)
  store %struct.camellia_ctx* %12, %struct.camellia_ctx** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32*, i32** %8, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be32_to_cpu(i32 %22)
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.camellia_ctx*, %struct.camellia_ctx** %7, align 8
  %36 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %39 = load %struct.camellia_ctx*, %struct.camellia_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 16
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 24, i32 32
  %45 = call i32 @camellia_do_decrypt(i32 %37, i32* %38, i32 %44)
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cpu_to_be32(i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_be32(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = call i32 @cpu_to_be32(i32 %57)
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_be32(i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %63, i32* %65, align 4
  ret void
}

declare dso_local %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @camellia_do_decrypt(i32, i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
