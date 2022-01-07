; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_cycles_digest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_hash_cycles_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_desc = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"%6lu cycles/operation, %4lu cycles/byte\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_desc*, %struct.scatterlist*, i32, i8*)* @test_hash_cycles_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_hash_cycles_digest(%struct.hash_desc* %0, %struct.scatterlist* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.hash_desc* %0, %struct.hash_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 0, i64* %10, align 8
  %15 = call i32 (...) @local_bh_disable()
  %16 = call i32 (...) @local_irq_disable()
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %30, %4
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %22 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @crypto_hash_digest(%struct.hash_desc* %21, %struct.scatterlist* %22, i32 %23, i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %58

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %17

33:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = call i64 (...) @get_cycles()
  store i64 %38, i64* %13, align 8
  %39 = load %struct.hash_desc*, %struct.hash_desc** %6, align 8
  %40 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @crypto_hash_digest(%struct.hash_desc* %39, %struct.scatterlist* %40, i32 %41, i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %58

47:                                               ; preds = %37
  %48 = call i64 (...) @get_cycles()
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub nsw i64 %49, %50
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57, %46, %28
  %59 = call i32 (...) @local_irq_enable()
  %60 = call i32 (...) @local_bh_enable()
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %74

65:                                               ; preds = %58
  %66 = load i64, i64* %10, align 8
  %67 = udiv i64 %66, 8
  %68 = load i64, i64* %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = mul nsw i32 8, %69
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %68, %71
  %73 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %65, %63
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @crypto_hash_digest(%struct.hash_desc*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @printk(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
