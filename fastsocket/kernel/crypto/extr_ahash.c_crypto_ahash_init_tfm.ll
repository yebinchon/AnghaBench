; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_init_tfm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ahash.c_crypto_ahash_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.crypto_ahash = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.ahash_alg = type { i64, i64, i64, i32, i64, i32, i32, i32 }

@ahash_nosetkey = common dso_local global i64 0, align 8
@ahash_no_export = common dso_local global i64 0, align 8
@ahash_no_import = common dso_local global i64 0, align 8
@crypto_ahash_type = common dso_local global i32 0, align 4
@ahash_def_finup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_ahash_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ahash_init_tfm(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_ahash*, align 8
  %5 = alloca %struct.ahash_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %6 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %7 = call %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm* %6)
  store %struct.crypto_ahash* %7, %struct.crypto_ahash** %4, align 8
  %8 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %9 = call %struct.ahash_alg* @crypto_ahash_alg(%struct.crypto_ahash* %8)
  store %struct.ahash_alg* %9, %struct.ahash_alg** %5, align 8
  %10 = load i64, i64* @ahash_nosetkey, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %11, i32 0, i32 2
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* @ahash_no_export, align 8
  %14 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* @ahash_no_import, align 8
  %17 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %18 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %20 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, @crypto_ahash_type
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %27 = call i32 @crypto_init_shash_ops_async(%struct.crypto_tfm* %26)
  store i32 %27, i32* %2, align 4
  br label %95

28:                                               ; preds = %1
  %29 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %30 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %33 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %35 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %38 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %40 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %43 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %45 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  br label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @ahash_def_finup, align 4
  %51 = sext i32 %50 to i64
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i64 [ %46, %48 ], [ %51, %49 ]
  %54 = trunc i64 %53 to i32
  %55 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %56 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %58 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %61 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %63 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %68 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %71 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %52
  %73 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %74 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %79 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %82 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %85 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.ahash_alg*, %struct.ahash_alg** %5, align 8
  %90 = getelementptr inbounds %struct.ahash_alg, %struct.ahash_alg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.crypto_ahash*, %struct.crypto_ahash** %4, align 8
  %93 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %83
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %25
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.crypto_ahash* @__crypto_ahash_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.ahash_alg* @crypto_ahash_alg(%struct.crypto_ahash*) #1

declare dso_local i32 @crypto_init_shash_ops_async(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
