; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event_fsl_emb.c_hw_perf_cache_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event_fsl_emb.c_hw_perf_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**** }

@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i64 0, align 8
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i64 0, align 8
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @hw_perf_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_perf_cache_event(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32****, i32***** %11, align 8
  %13 = icmp ne i32**** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @PERF_COUNT_HW_CACHE_MAX, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @PERF_COUNT_HW_CACHE_OP_MAX, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %32, %17
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %71

43:                                               ; preds = %36
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32****, i32***** %45, align 8
  %47 = load i32***, i32**** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32**, i32*** %47, i64 %48
  %50 = load i32**, i32*** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32*, i32** %50, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %71

62:                                               ; preds = %43
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %65, %59, %40, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
