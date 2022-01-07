; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_init_nivaead_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_init_nivaead_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.aead_tfm, %struct.TYPE_2__* }
%struct.aead_tfm = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.aead_alg }
%struct.aead_alg = type { i32, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@aead_null_givencrypt = common dso_local global i32 0, align 4
@aead_null_givdecrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_nivaead_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_nivaead_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aead_alg*, align 8
  %9 = alloca %struct.aead_tfm*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.aead_alg* %13, %struct.aead_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 0
  store %struct.aead_tfm* %15, %struct.aead_tfm** %9, align 8
  %16 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %17 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %20 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @max(i32 %18, i64 %21)
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sdiv i32 %23, 8
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %3
  %30 = load i32, i32* @setkey, align 4
  %31 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %32 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %34 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %37 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %39 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %42 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %44 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %29
  %48 = load i32, i32* @aead_null_givencrypt, align 4
  %49 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %50 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @aead_null_givdecrypt, align 4
  %52 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %53 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %29
  %55 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %56 = call i32 @__crypto_aead_cast(%struct.crypto_tfm* %55)
  %57 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %58 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %60 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %63 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %65 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %68 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %54, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @__crypto_aead_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
