; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PATTERN_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: %u errors suppressed\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32, i32, i32, i32)* @dmatest_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_verify(i32** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %18, align 4
  br label %20

20:                                               ; preds = %66, %6
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %17, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %69

24:                                               ; preds = %20
  %25 = load i32, i32* %18, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %13, align 4
  br label %27

27:                                               ; preds = %62, %24
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i32*, i32** %17, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* @PATTERN_COUNT_MASK, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %37, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %31
  %47 = load i32, i32* %14, align 4
  %48 = icmp ult i32 %47, 32
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @dmatest_mismatch(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %14, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %56, %31
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %27

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32**, i32*** %7, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i32 1
  store i32** %68, i32*** %7, align 8
  br label %20

69:                                               ; preds = %20
  %70 = load i32, i32* %14, align 4
  %71 = icmp ugt i32 %70, 32
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub i32 %76, 32
  %78 = call i32 @pr_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = load i32, i32* %14, align 4
  ret i32 %80
}

declare dso_local i32 @dmatest_mismatch(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
