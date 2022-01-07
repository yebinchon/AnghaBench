; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sleep.c_acpi_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_sleep.c_acpi_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_SUSPEND_STANDBY = common dso_local global i32 0, align 4
@PM_SUSPEND_MEM = common dso_local global i32 0, align 4
@PM_SUSPEND_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [6 x i32], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  store i32 0, i32* %5, align 4
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* @PM_SUSPEND_STANDBY, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* @PM_SUSPEND_MEM, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* @PM_SUSPEND_MAX, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_suspend(i32 %26)
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %16, %1
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (...) @hibernate()
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %31, %22
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @pm_suspend(i32) #1

declare dso_local i32 @hibernate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
