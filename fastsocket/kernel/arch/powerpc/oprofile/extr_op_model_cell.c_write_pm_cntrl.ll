; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_write_pm_cntrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_cell.c_write_pm_cntrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32 }

@pm_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CBE_PM_ENABLE_PERF_MON = common dso_local global i32 0, align 4
@CBE_PM_STOP_AT_MAX = common dso_local global i32 0, align 4
@CBE_PM_FREEZE_ALL_CTRS = common dso_local global i32 0, align 4
@pm_control = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_pm_cntrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_pm_cntrl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 0), align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @CBE_PM_ENABLE_PERF_MON, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 1), align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* @CBE_PM_STOP_AT_MAX, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 2), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 2), align 8
  %22 = call i32 @CBE_PM_TRACE_MODE_SET(i64 %21)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 3), align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 3), align 8
  %30 = call i32 @CBE_PM_TRACE_BUF_OVFLW(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 4), align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @CBE_PM_FREEZE_ALL_CTRS, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 6), align 4
  %42 = call i32 @CBE_PM_SPU_ADDR_TRACE_SET(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pm_regs, i32 0, i32 0, i32 5), align 8
  %46 = call i32 @CBE_PM_COUNT_MODE_SET(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @pm_control, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @cbe_write_pm(i32 %49, i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @CBE_PM_TRACE_MODE_SET(i64) #1

declare dso_local i32 @CBE_PM_TRACE_BUF_OVFLW(i32) #1

declare dso_local i32 @CBE_PM_SPU_ADDR_TRACE_SET(i32) #1

declare dso_local i32 @CBE_PM_COUNT_MODE_SET(i32) #1

declare dso_local i32 @cbe_write_pm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
