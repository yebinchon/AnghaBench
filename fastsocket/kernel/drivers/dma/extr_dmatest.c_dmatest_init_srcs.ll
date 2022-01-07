; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_init_srcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_init_srcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATTERN_SRC = common dso_local global i32 0, align 4
@PATTERN_COUNT_MASK = common dso_local global i32 0, align 4
@PATTERN_COPY = common dso_local global i32 0, align 4
@test_buf_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i32)* @dmatest_init_srcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmatest_init_srcs(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %77, %3
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %8, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i32, i32* @PATTERN_SRC, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @PATTERN_COUNT_MASK, align 4
  %23 = and i32 %21, %22
  %24 = or i32 %19, %23
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %35, %36
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  %40 = load i32, i32* @PATTERN_SRC, align 4
  %41 = load i32, i32* @PATTERN_COPY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @PATTERN_COUNT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %42, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @test_buf_size, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* @PATTERN_SRC, align 4
  %62 = load i32, i32* %7, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @PATTERN_COUNT_MASK, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %61, %65
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  br label %77

77:                                               ; preds = %74
  %78 = load i32**, i32*** %4, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i32 1
  store i32** %79, i32*** %4, align 8
  br label %9

80:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
