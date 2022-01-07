; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pm.c_pxa_pm_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_pm.c_pxa_pm_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i64*)*, i32 (i64)*, i32 (i64*)* }

@PM_SUSPEND_STANDBY = common dso_local global i64 0, align 8
@pxa_cpu_pm_fns = common dso_local global %struct.TYPE_2__* null, align 8
@sleep_save = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"*** made it back from resume\0A\00", align 1
@HWCAP_IWMMXT = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa_pm_enter(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32 (i64*)*, i32 (i64*)** %11, align 8
  %13 = load i64*, i64** @sleep_save, align 8
  %14 = call i32 %12(i64* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %30, %9
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load i64*, i64** @sleep_save, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32 (i64)*, i32 (i64)** %36, align 8
  %38 = load i64, i64* %2, align 8
  %39 = call i32 %37(i64 %38)
  %40 = call i32 (...) @cpu_init()
  %41 = load i64, i64* %2, align 8
  %42 = load i64, i64* @PM_SUSPEND_STANDBY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i64*, i64** @sleep_save, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %3, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = call i32 @lubbock_set_hexled(i32 -1160008251)
  br label %69

69:                                               ; preds = %67, %69
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32 (i64)*, i32 (i64)** %71, align 8
  %73 = load i64, i64* %2, align 8
  %74 = call i32 %72(i64 %73)
  br label %69

75:                                               ; preds = %63
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pxa_cpu_pm_fns, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (i64*)*, i32 (i64*)** %77, align 8
  %79 = load i64*, i64** @sleep_save, align 8
  %80 = call i32 %78(i64* %79)
  br label %81

81:                                               ; preds = %75, %34
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @cpu_init(...) #1

declare dso_local i32 @lubbock_set_hexled(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
