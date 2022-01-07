; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_remove_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_remove_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Issue of Slot Disable command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*)* @remove_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_board(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.slot*, %struct.slot** %3, align 8
  %7 = getelementptr inbounds %struct.slot, %struct.slot* %6, i32 0, i32 0
  %8 = load %struct.controller*, %struct.controller** %7, align 8
  store %struct.controller* %8, %struct.controller** %5, align 8
  %9 = load %struct.slot*, %struct.slot** %3, align 8
  %10 = call i32 @pciehp_unconfigure_device(%struct.slot* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.controller*, %struct.controller** %5, align 8
  %17 = call i64 @POWER_CTRL(%struct.controller* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.slot*, %struct.slot** %3, align 8
  %21 = call i32 @pciehp_power_off_slot(%struct.slot* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.controller*, %struct.controller** %5, align 8
  %26 = call i32 @ctrl_err(%struct.controller* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %19
  %29 = call i32 @msleep(i32 1000)
  br label %30

30:                                               ; preds = %28, %15
  %31 = load %struct.controller*, %struct.controller** %5, align 8
  %32 = call i64 @PWR_LED(%struct.controller* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.slot*, %struct.slot** %3, align 8
  %36 = call i32 @pciehp_green_led_off(%struct.slot* %35)
  br label %37

37:                                               ; preds = %34, %30
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %24, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @pciehp_unconfigure_device(%struct.slot*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_power_off_slot(%struct.slot*) #1

declare dso_local i32 @ctrl_err(%struct.controller*, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @PWR_LED(%struct.controller*) #1

declare dso_local i32 @pciehp_green_led_off(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
