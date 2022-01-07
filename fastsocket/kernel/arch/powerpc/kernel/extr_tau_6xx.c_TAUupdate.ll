; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_tau_6xx.c_TAUupdate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_tau_6xx.c_TAUupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@SPRN_THRM1 = common dso_local global i32 0, align 4
@THRM1_TIV = common dso_local global i32 0, align 4
@THRM1_TIN = common dso_local global i32 0, align 4
@tau = common dso_local global %struct.TYPE_2__* null, align 8
@step_size = common dso_local global i32 0, align 4
@window_expand = common dso_local global i32 0, align 4
@SPRN_THRM2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TAUupdate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @SPRN_THRM1, align 4
  %5 = call i32 @mfspr(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @THRM1_TIV, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @THRM1_TIN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @step_size, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load i32, i32* @step_size, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, %24
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @step_size, align 4
  %33 = load i32, i32* @window_expand, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, %34
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %23, %14
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %42, %9
  br label %49

49:                                               ; preds = %48, %1
  %50 = load i32, i32* @SPRN_THRM2, align 4
  %51 = call i32 @mfspr(i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @THRM1_TIV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %96

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @THRM1_TIN, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %95

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @step_size, align 4
  %68 = sub nsw i32 127, %67
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %60
  %71 = load i32, i32* @step_size, align 4
  %72 = load i32, i32* @window_expand, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %73
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @step_size, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %81
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %70, %60
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tau, align 8
  %91 = load i32, i32* %2, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %89, %55
  br label %96

96:                                               ; preds = %95, %49
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @set_thresholds(i32 %97)
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @set_thresholds(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
