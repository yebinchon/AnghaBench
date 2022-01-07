; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmwatchdog.c_vmwdt_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_vmwatchdog.c_vmwdt_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMWDT_OPEN = common dso_local global i32 0, align 4
@vmwdt_is_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"The system cannot be suspended while the watchdog is in use\0A\00", align 1
@NOTIFY_BAD = common dso_local global i32 0, align 4
@VMWDT_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"The system cannot be suspended while the watchdog is running\0A\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmwdt_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmwdt_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @VMWDT_OPEN, align 4
  %3 = call i64 @test_and_set_bit(i32 %2, i32* @vmwdt_is_open)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %7, i32* %1, align 4
  br label %19

8:                                                ; preds = %0
  %9 = load i32, i32* @VMWDT_RUNNING, align 4
  %10 = call i64 @test_bit(i32 %9, i32* @vmwdt_is_open)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @VMWDT_OPEN, align 4
  %14 = call i32 @clear_bit(i32 %13, i32* @vmwdt_is_open)
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %8
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %12, %5
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
