; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_wdog_reboot_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_watchdog.c_wdog_reboot_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@wdog_reboot_handler.reboot_event_handled = internal global i32 0, align 4
@watchdog_user = common dso_local global i64 0, align 8
@SYS_POWER_OFF = common dso_local global i64 0, align 8
@SYS_HALT = common dso_local global i64 0, align 8
@WDOG_TIMEOUT_NONE = common dso_local global i64 0, align 8
@ipmi_watchdog_state = common dso_local global i64 0, align 8
@IPMI_SET_TIMEOUT_NO_HB = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@pretimeout = common dso_local global i64 0, align 8
@WDOG_TIMEOUT_RESET = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @wdog_reboot_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdog_reboot_handler(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* @watchdog_user, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load i32, i32* @wdog_reboot_handler.reboot_event_handled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  store i32 1, i32* @wdog_reboot_handler.reboot_event_handled, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @SYS_POWER_OFF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @SYS_HALT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %12
  %21 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  store i64 %21, i64* @ipmi_watchdog_state, align 8
  %22 = load i32, i32* @IPMI_SET_TIMEOUT_NO_HB, align 4
  %23 = call i32 @ipmi_set_timeout(i32 %22)
  br label %33

24:                                               ; preds = %16
  %25 = load i64, i64* @ipmi_watchdog_state, align 8
  %26 = load i64, i64* @WDOG_TIMEOUT_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  store i32 120, i32* @timeout, align 4
  store i64 0, i64* @pretimeout, align 8
  %29 = load i64, i64* @WDOG_TIMEOUT_RESET, align 8
  store i64 %29, i64* @ipmi_watchdog_state, align 8
  %30 = load i32, i32* @IPMI_SET_TIMEOUT_NO_HB, align 4
  %31 = call i32 @ipmi_set_timeout(i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %9, %3
  %35 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %35
}

declare dso_local i32 @ipmi_set_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
