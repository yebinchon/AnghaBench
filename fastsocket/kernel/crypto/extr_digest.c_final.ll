; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_final.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_digest.c_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.digest_alg }
%struct.digest_alg = type { i32 (%struct.crypto_tfm.0*, i32*)*, i32 }
%struct.crypto_tfm.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, i32*)* @final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @final(%struct.hash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.hash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.digest_alg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.hash_desc*, %struct.hash_desc** %3, align 8
  %12 = getelementptr inbounds %struct.hash_desc, %struct.hash_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.crypto_tfm* @crypto_hash_tfm(i32 %13)
  store %struct.crypto_tfm* %14, %struct.crypto_tfm** %5, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %16 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %18 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.digest_alg* %20, %struct.digest_alg** %7, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = ptrtoint i32* %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = and i64 %22, %23
  %25 = call i64 @unlikely(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %2
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %31 = call i64 @crypto_tfm_ctx(%struct.crypto_tfm* %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @ALIGN(i64 %32, i64 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i32*
  %37 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %38 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @ALIGN(i64 %41, i64 %42)
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  store i32* %45, i32** %10, align 8
  %46 = load %struct.digest_alg*, %struct.digest_alg** %7, align 8
  %47 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %46, i32 0, i32 0
  %48 = load i32 (%struct.crypto_tfm.0*, i32*)*, i32 (%struct.crypto_tfm.0*, i32*)** %47, align 8
  %49 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %50 = bitcast %struct.crypto_tfm* %49 to %struct.crypto_tfm.0*
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 %48(%struct.crypto_tfm.0* %50, i32* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load %struct.digest_alg*, %struct.digest_alg** %7, align 8
  %56 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memcpy(i32* %53, i32* %54, i32 %57)
  br label %67

59:                                               ; preds = %2
  %60 = load %struct.digest_alg*, %struct.digest_alg** %7, align 8
  %61 = getelementptr inbounds %struct.digest_alg, %struct.digest_alg* %60, i32 0, i32 0
  %62 = load i32 (%struct.crypto_tfm.0*, i32*)*, i32 (%struct.crypto_tfm.0*, i32*)** %61, align 8
  %63 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %64 = bitcast %struct.crypto_tfm* %63 to %struct.crypto_tfm.0*
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 %62(%struct.crypto_tfm.0* %64, i32* %65)
  br label %67

67:                                               ; preds = %59, %27
  ret i32 0
}

declare dso_local %struct.crypto_tfm* @crypto_hash_tfm(i32) #1

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
