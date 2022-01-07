; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_prepare_alg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_shash.c_shash_prepare_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_alg = type { i32, i32, i32, i64, i32, i64, i64, i64, %struct.crypto_alg }
%struct.crypto_alg = type { i32, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@crypto_shash_type = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_SHASH = common dso_local global i32 0, align 4
@shash_finup_unaligned = common dso_local global i64 0, align 8
@shash_digest_unaligned = common dso_local global i64 0, align 8
@shash_default_export = common dso_local global i64 0, align 8
@shash_default_import = common dso_local global i32 0, align 4
@shash_no_setkey = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_alg*)* @shash_prepare_alg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shash_prepare_alg(%struct.shash_alg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shash_alg*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.shash_alg* %0, %struct.shash_alg** %3, align 8
  %5 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %6 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %5, i32 0, i32 8
  store %struct.crypto_alg* %6, %struct.crypto_alg** %4, align 8
  %7 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %8 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %10, 8
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %27, label %13

13:                                               ; preds = %1
  %14 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %15 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = sdiv i32 %17, 8
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %13
  %21 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %22 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %24, 8
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %13, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %88

30:                                               ; preds = %20
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 1
  store i32* @crypto_shash_type, i32** %32, align 8
  %33 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @CRYPTO_ALG_TYPE_SHASH, align 4
  %40 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %41 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %45 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load i64, i64* @shash_finup_unaligned, align 8
  %50 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %51 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %50, i32 0, i32 7
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %30
  %53 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %54 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @shash_digest_unaligned, align 8
  %59 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %60 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %59, i32 0, i32 6
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %63 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* @shash_default_export, align 8
  %68 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %69 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %68, i32 0, i32 5
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @shash_default_import, align 4
  %71 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %72 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %74 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %77 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %66, %61
  %79 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %80 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* @shash_no_setkey, align 8
  %85 = load %struct.shash_alg*, %struct.shash_alg** %3, align 8
  %86 = getelementptr inbounds %struct.shash_alg, %struct.shash_alg* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %27
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
