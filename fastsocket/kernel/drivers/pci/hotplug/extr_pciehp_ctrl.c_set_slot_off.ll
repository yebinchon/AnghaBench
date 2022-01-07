; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_set_slot_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_set_slot_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }
%struct.slot = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Issue of Slot Power Off command failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Issue of Set Attention Led command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.controller*, %struct.slot*)* @set_slot_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_slot_off(%struct.controller* %0, %struct.slot* %1) #0 {
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.slot*, align 8
  store %struct.controller* %0, %struct.controller** %3, align 8
  store %struct.slot* %1, %struct.slot** %4, align 8
  %5 = load %struct.controller*, %struct.controller** %3, align 8
  %6 = call i64 @POWER_CTRL(%struct.controller* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.slot*, %struct.slot** %4, align 8
  %10 = call i64 @pciehp_power_off_slot(%struct.slot* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.controller*, %struct.controller** %3, align 8
  %14 = call i32 @ctrl_err(%struct.controller* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %36

15:                                               ; preds = %8
  %16 = call i32 @msleep(i32 1000)
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.controller*, %struct.controller** %3, align 8
  %19 = call i64 @PWR_LED(%struct.controller* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.slot*, %struct.slot** %4, align 8
  %23 = call i32 @pciehp_green_led_off(%struct.slot* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.controller*, %struct.controller** %3, align 8
  %26 = call i64 @ATTN_LED(%struct.controller* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.slot*, %struct.slot** %4, align 8
  %30 = call i64 @pciehp_set_attention_status(%struct.slot* %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.controller*, %struct.controller** %3, align 8
  %34 = call i32 @ctrl_err(%struct.controller* %33, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %12, %32, %35, %24
  ret void
}

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i64 @pciehp_power_off_slot(%struct.slot*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @PWR_LED(%struct.controller*) #1

declare dso_local i32 @pciehp_green_led_off(%struct.slot*) #1

declare dso_local i64 @ATTN_LED(%struct.controller*) #1

declare dso_local i64 @pciehp_set_attention_status(%struct.slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
