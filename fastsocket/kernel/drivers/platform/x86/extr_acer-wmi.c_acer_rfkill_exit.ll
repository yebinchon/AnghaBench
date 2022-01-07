; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acer_rfkill_work = common dso_local global i32 0, align 4
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@bluetooth_rfkill = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acer_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acer_rfkill_exit() #0 {
  %1 = call i32 @cancel_delayed_work_sync(i32* @acer_rfkill_work)
  %2 = load i32, i32* @wireless_rfkill, align 4
  %3 = call i32 @rfkill_unregister(i32 %2)
  %4 = load i32, i32* @wireless_rfkill, align 4
  %5 = call i32 @rfkill_destroy(i32 %4)
  %6 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %7 = call i64 @has_cap(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* @bluetooth_rfkill, align 4
  %11 = call i32 @rfkill_unregister(i32 %10)
  %12 = load i32, i32* @bluetooth_rfkill, align 4
  %13 = call i32 @rfkill_destroy(i32 %12)
  br label %14

14:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

declare dso_local i64 @has_cap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
