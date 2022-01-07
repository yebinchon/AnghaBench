; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_jiffies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%6u opers/sec, %9lu bytes/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i32, i8*, i32)* @test_hash_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_jiffies(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_desc*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %6
  %23 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @test_hash_jiffies_digest(%struct.hash_desc* %23, %struct.scatterlist* %24, i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %93

29:                                               ; preds = %6
  %30 = load i64, i64* @jiffies, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 %31, %35
  store i64 %36, i64* %15, align 8
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %77, %29
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @time_before(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %37
  %43 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %44 = call i32 @crypto_hash_init(%struct.hash_desc* %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %18, align 4
  store i32 %48, i32* %7, align 4
  br label %93

49:                                               ; preds = %42
  store i32 0, i32* %17, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %56 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @crypto_hash_update(%struct.hash_desc* %55, %struct.scatterlist* %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %7, align 4
  br label %93

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %17, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.hash_desc*, %struct.hash_desc** %8, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @crypto_hash_final(%struct.hash_desc* %69, i8* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %18, align 4
  store i32 %75, i32* %7, align 4
  br label %93

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %37

80:                                               ; preds = %37
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sdiv i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %85, %87
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = sdiv i64 %88, %90
  %92 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83, i64 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %80, %74, %61, %47, %22
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @test_hash_jiffies_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i8*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @crypto_hash_init(%struct.hash_desc*) #1

declare dso_local i32 @crypto_hash_update(%struct.hash_desc*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_hash_final(%struct.hash_desc*, i8*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
