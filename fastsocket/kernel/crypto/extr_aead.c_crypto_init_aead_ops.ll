; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_init_aead_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_aead.c_crypto_init_aead_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.aead_tfm }
%struct.TYPE_2__ = type { i32, %struct.aead_alg }
%struct.aead_alg = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.aead_tfm = type { i32, i32, i32, i8*, i8*, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_ALG_GENIV = common dso_local global i32 0, align 4
@setkey = common dso_local global i32 0, align 4
@no_givcrypt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32, i32)* @crypto_init_aead_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_aead_ops(%struct.crypto_tfm* %0, i32 %1, i32 %2) #0 {
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
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.aead_alg* %13, %struct.aead_alg** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %15 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %14, i32 0, i32 1
  store %struct.aead_tfm* %15, %struct.aead_tfm** %9, align 8
  %16 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %17 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %20 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @max(i32 %18, i32 %21)
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = sdiv i32 %23, 8
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %96

29:                                               ; preds = %3
  %30 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CRYPTO_ALG_GENIV, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %40 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  br label %44

42:                                               ; preds = %29
  %43 = load i32, i32* @setkey, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i32 [ %41, %38 ], [ %43, %42 ]
  %46 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %47 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %49 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %52 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %54 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %57 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %59 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = inttoptr i64 %60 to i8*
  br label %66

64:                                               ; preds = %44
  %65 = load i8*, i8** @no_givcrypt, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i8* [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %69 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %68, i32 0, i32 4
  store i8* %67, i8** %69, align 8
  %70 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %71 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = inttoptr i64 %72 to i8*
  br label %78

76:                                               ; preds = %66
  %77 = load i8*, i8** @no_givcrypt, align 8
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ]
  %80 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %81 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %83 = call i32 @__crypto_aead_cast(%struct.crypto_tfm* %82)
  %84 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %85 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %87 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %90 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.aead_alg*, %struct.aead_alg** %8, align 8
  %92 = getelementptr inbounds %struct.aead_alg, %struct.aead_alg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.aead_tfm*, %struct.aead_tfm** %9, align 8
  %95 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %78, %26
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @__crypto_aead_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
