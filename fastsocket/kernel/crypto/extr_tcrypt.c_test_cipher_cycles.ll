; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_cipher_cycles.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_tcrypt.c_test_cipher_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"1 operation in %lu cycles (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, i32, %struct.scatterlist*, i32)* @test_cipher_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cipher_cycles(%struct.blkcipher_desc* %0, i32 %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 (...) @local_bh_disable()
  %15 = call i32 (...) @local_irq_disable()
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %39, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %42

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %24 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc* %23, %struct.scatterlist* %24, %struct.scatterlist* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %34

28:                                               ; preds = %19
  %29 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %30 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @crypto_blkcipher_decrypt(%struct.blkcipher_desc* %29, %struct.scatterlist* %30, %struct.scatterlist* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %77

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %16

42:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = call i64 (...) @get_cycles()
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %52 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %53 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc* %51, %struct.scatterlist* %52, %struct.scatterlist* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %58 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @crypto_blkcipher_decrypt(%struct.blkcipher_desc* %57, %struct.scatterlist* %58, %struct.scatterlist* %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = call i64 (...) @get_cycles()
  store i64 %63, i64* %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %77

67:                                               ; preds = %62
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %68, %69
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %43

76:                                               ; preds = %43
  br label %77

77:                                               ; preds = %76, %66, %37
  %78 = call i32 (...) @local_irq_enable()
  %79 = call i32 (...) @local_bh_enable()
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 4
  %85 = udiv i64 %84, 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @crypto_blkcipher_encrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @crypto_blkcipher_decrypt(%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
