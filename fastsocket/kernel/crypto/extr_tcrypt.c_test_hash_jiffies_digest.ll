; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_jiffies_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_jiffies_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%6u opers/sec, %9lu bytes/sec\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i8*, i32)* @test_hash_jiffies_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_jiffies_digest(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_desc*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hash_desc* %0, %struct.hash_desc** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = add i64 %17, %21
  store i64 %22, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %39, %5
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.hash_desc*, %struct.hash_desc** %7, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @crypto_hash_digest(%struct.hash_desc* %29, %struct.scatterlist* %30, i32 %31, i8* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %6, align 4
  br label %55

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %47, %49
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = sdiv i64 %50, %52
  %54 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %42, %36
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
