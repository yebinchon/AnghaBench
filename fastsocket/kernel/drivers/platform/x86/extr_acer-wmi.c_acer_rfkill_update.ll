; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@acer_rfkill_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @acer_rfkill_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_rfkill_update(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %6 = call i32 @get_u32(i32* %3, i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @ACPI_SUCCESS(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @wireless_rfkill, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @rfkill_set_sw_state(i32 %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %19 = call i64 @has_cap(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %23 = call i32 @get_u32(i32* %3, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ACPI_SUCCESS(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* @bluetooth_rfkill, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @rfkill_set_sw_state(i32 %28, i32 %32)
  br label %34

34:                                               ; preds = %27, %21
  br label %35

35:                                               ; preds = %34, %17
  %36 = load i32, i32* @HZ, align 4
  %37 = call i32 @round_jiffies_relative(i32 %36)
  %38 = call i32 @schedule_delayed_work(i32* @acer_rfkill_work, i32 %37)
  ret void
}

declare dso_local i32 @get_u32(i32*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @rfkill_set_sw_state(i32, i32) #1

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
