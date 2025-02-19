; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_mismatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dmatest.c_dmatest_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@PATTERN_COUNT_MASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"%s: srcbuf[0x%x] overwritten! Expected %02x, got %02x\0A\00", align 1
@PATTERN_COPY = common dso_local global i32 0, align 4
@PATTERN_OVERWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: dstbuf[0x%x] not copied! Expected %02x, got %02x\0A\00", align 1
@PATTERN_SRC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"%s: dstbuf[0x%x] was copied! Expected %02x, got %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"%s: dstbuf[0x%x] mismatch! Expected %02x, got %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @dmatest_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmatest_mismatch(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %9, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @PATTERN_COUNT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %17, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30, i32 %31, i32 %32)
  br label %71

34:                                               ; preds = %5
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @PATTERN_COPY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @PATTERN_COPY, align 4
  %42 = load i32, i32* @PATTERN_OVERWRITE, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %48, i32 %49, i32 %50)
  br label %70

52:                                               ; preds = %39, %34
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @PATTERN_SRC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %59, i32 %60, i32 %61)
  br label %69

63:                                               ; preds = %52
  %64 = load i8*, i8** %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @pr_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %57
  br label %70

70:                                               ; preds = %69, %46
  br label %71

71:                                               ; preds = %70, %28
  ret void
}

declare dso_local i32 @pr_warning(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
