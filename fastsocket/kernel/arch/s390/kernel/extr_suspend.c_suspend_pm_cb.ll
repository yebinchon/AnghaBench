; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_suspend.c_suspend_pm_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_suspend.c_suspend_pm_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LC_ORDER = common dso_local global i32 0, align 4
@suspend_zero_pages = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @suspend_pm_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @suspend_pm_cb(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* %6, align 8
  switch i64 %8, label %22 [
    i64 128, label %9
    i64 131, label %9
    i64 129, label %18
    i64 130, label %18
  ]

9:                                                ; preds = %3, %3
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = load i32, i32* @LC_ORDER, align 4
  %12 = call i32 @__get_free_pages(i32 %10, i32 %11)
  store i32 %12, i32* @suspend_zero_pages, align 4
  %13 = load i32, i32* @suspend_zero_pages, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9
  %16 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %16, i32* %4, align 4
  br label %26

17:                                               ; preds = %9
  br label %24

18:                                               ; preds = %3, %3
  %19 = load i32, i32* @suspend_zero_pages, align 4
  %20 = load i32, i32* @LC_ORDER, align 4
  %21 = call i32 @free_pages(i32 %19, i32 %20)
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %18, %17
  %25 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @__get_free_pages(i32, i32) #1

declare dso_local i32 @free_pages(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
