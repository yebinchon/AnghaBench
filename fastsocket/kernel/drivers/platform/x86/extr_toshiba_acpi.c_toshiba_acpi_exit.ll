; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_acpi_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@toshiba_acpi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@toshiba_backlight_device = common dso_local global i64 0, align 8
@toshiba_proc_dir = common dso_local global i64 0, align 8
@PROC_TOSHIBA = common dso_local global i32 0, align 4
@acpi_root_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @toshiba_acpi_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_acpi_exit() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @toshiba_acpi, i32 0, i32 1), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @toshiba_acpi, i32 0, i32 1), align 8
  %5 = call i32 @rfkill_unregister(i64 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @toshiba_acpi, i32 0, i32 1), align 8
  %7 = call i32 @rfkill_destroy(i64 %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i64, i64* @toshiba_backlight_device, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* @toshiba_backlight_device, align 8
  %13 = call i32 @backlight_device_unregister(i64 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @remove_device()
  %16 = load i64, i64* @toshiba_proc_dir, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @PROC_TOSHIBA, align 4
  %20 = load i32, i32* @acpi_root_dir, align 4
  %21 = call i32 @remove_proc_entry(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @toshiba_acpi, i32 0, i32 0), align 8
  %24 = call i32 @platform_device_unregister(i32 %23)
  ret void
}

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @backlight_device_unregister(i64) #1

declare dso_local i32 @remove_device(...) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
