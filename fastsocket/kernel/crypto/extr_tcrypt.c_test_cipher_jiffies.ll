; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_cipher_jiffies.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_cipher_jiffies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%d operations in %d seconds (%ld bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i32, %struct.scatterlist*, i32, i32)* @test_cipher_jiffies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cipher_jiffies(%struct.blkcipher_desc* %0, i32 %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkcipher_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
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

23:                                               ; preds = %49, %5
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i64 @time_before(i64 %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc* %32, %struct.scatterlist* %33, %struct.scatterlist* %34, i32 %35)
  store i32 %36, i32* %15, align 4
  br label %43

37:                                               ; preds = %28
  %38 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %7, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @crypto_blkcipher_decrypt(%struct.blkcipher_desc* %38, %struct.scatterlist* %39, %struct.scatterlist* %40, i32 %41)
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %61

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = mul nsw i64 %56, %58
  %60 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i64 %59)
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %46
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
