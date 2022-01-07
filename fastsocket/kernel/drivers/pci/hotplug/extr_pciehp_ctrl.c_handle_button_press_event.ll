; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_handle_button_press_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_handle_button_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, i32, %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"PCI slot #%s - powering off due to button press.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"PCI slot #%s - powering on due to button press.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Button cancel on Slot(%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"PCI slot #%s - action canceled due to button press\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Button ignore on Slot(%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Not a valid state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slot*)* @handle_button_press_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_button_press_event(%struct.slot* %0) #0 {
  %2 = alloca %struct.slot*, align 8
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  store %struct.slot* %0, %struct.slot** %2, align 8
  %5 = load %struct.slot*, %struct.slot** %2, align 8
  %6 = getelementptr inbounds %struct.slot, %struct.slot* %5, i32 0, i32 2
  %7 = load %struct.controller*, %struct.controller** %6, align 8
  store %struct.controller* %7, %struct.controller** %3, align 8
  %8 = load %struct.slot*, %struct.slot** %2, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %99 [
    i32 128, label %11
    i32 132, label %50
    i32 131, label %50
    i32 130, label %92
    i32 129, label %92
  ]

11:                                               ; preds = %1
  %12 = load %struct.slot*, %struct.slot** %2, align 8
  %13 = call i32 @pciehp_get_power_status(%struct.slot* %12, i32* %4)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = getelementptr inbounds %struct.slot, %struct.slot* %17, i32 0, i32 0
  store i32 132, i32* %18, align 8
  %19 = load %struct.controller*, %struct.controller** %3, align 8
  %20 = load %struct.slot*, %struct.slot** %2, align 8
  %21 = call i32 @slot_name(%struct.slot* %20)
  %22 = call i32 @ctrl_info(%struct.controller* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %30

23:                                               ; preds = %11
  %24 = load %struct.slot*, %struct.slot** %2, align 8
  %25 = getelementptr inbounds %struct.slot, %struct.slot* %24, i32 0, i32 0
  store i32 131, i32* %25, align 8
  %26 = load %struct.controller*, %struct.controller** %3, align 8
  %27 = load %struct.slot*, %struct.slot** %2, align 8
  %28 = call i32 @slot_name(%struct.slot* %27)
  %29 = call i32 @ctrl_info(%struct.controller* %26, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %23, %16
  %31 = load %struct.controller*, %struct.controller** %3, align 8
  %32 = call i32 @PWR_LED(%struct.controller* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.slot*, %struct.slot** %2, align 8
  %36 = call i32 @pciehp_green_led_blink(%struct.slot* %35)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.controller*, %struct.controller** %3, align 8
  %39 = call i32 @ATTN_LED(%struct.controller* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.slot*, %struct.slot** %2, align 8
  %43 = call i32 @pciehp_set_attention_status(%struct.slot* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.slot*, %struct.slot** %2, align 8
  %46 = getelementptr inbounds %struct.slot, %struct.slot* %45, i32 0, i32 1
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 5, %47
  %49 = call i32 @schedule_delayed_work(i32* %46, i32 %48)
  br label %102

50:                                               ; preds = %1, %1
  %51 = load %struct.controller*, %struct.controller** %3, align 8
  %52 = load %struct.slot*, %struct.slot** %2, align 8
  %53 = call i32 @slot_name(%struct.slot* %52)
  %54 = call i32 @ctrl_info(%struct.controller* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.slot*, %struct.slot** %2, align 8
  %56 = getelementptr inbounds %struct.slot, %struct.slot* %55, i32 0, i32 1
  %57 = call i32 @cancel_delayed_work(i32* %56)
  %58 = load %struct.slot*, %struct.slot** %2, align 8
  %59 = getelementptr inbounds %struct.slot, %struct.slot* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load %struct.controller*, %struct.controller** %3, align 8
  %64 = call i32 @PWR_LED(%struct.controller* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.slot*, %struct.slot** %2, align 8
  %68 = call i32 @pciehp_green_led_on(%struct.slot* %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %78

70:                                               ; preds = %50
  %71 = load %struct.controller*, %struct.controller** %3, align 8
  %72 = call i32 @PWR_LED(%struct.controller* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.slot*, %struct.slot** %2, align 8
  %76 = call i32 @pciehp_green_led_off(%struct.slot* %75)
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %69
  %79 = load %struct.controller*, %struct.controller** %3, align 8
  %80 = call i32 @ATTN_LED(%struct.controller* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.slot*, %struct.slot** %2, align 8
  %84 = call i32 @pciehp_set_attention_status(%struct.slot* %83, i32 0)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.controller*, %struct.controller** %3, align 8
  %87 = load %struct.slot*, %struct.slot** %2, align 8
  %88 = call i32 @slot_name(%struct.slot* %87)
  %89 = call i32 @ctrl_info(%struct.controller* %86, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.slot*, %struct.slot** %2, align 8
  %91 = getelementptr inbounds %struct.slot, %struct.slot* %90, i32 0, i32 0
  store i32 128, i32* %91, align 8
  br label %102

92:                                               ; preds = %1, %1
  %93 = load %struct.controller*, %struct.controller** %3, align 8
  %94 = load %struct.slot*, %struct.slot** %2, align 8
  %95 = call i32 @slot_name(%struct.slot* %94)
  %96 = call i32 @ctrl_info(%struct.controller* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  %97 = load %struct.slot*, %struct.slot** %2, align 8
  %98 = call i32 @update_slot_info(%struct.slot* %97)
  br label %102

99:                                               ; preds = %1
  %100 = load %struct.controller*, %struct.controller** %3, align 8
  %101 = call i32 @ctrl_warn(%struct.controller* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92, %85, %44
  ret void
}

declare dso_local i32 @pciehp_get_power_status(%struct.slot*, i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @PWR_LED(%struct.controller*) #1

declare dso_local i32 @pciehp_green_led_blink(%struct.slot*) #1

declare dso_local i32 @ATTN_LED(%struct.controller*) #1

declare dso_local i32 @pciehp_set_attention_status(%struct.slot*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @pciehp_green_led_on(%struct.slot*) #1

declare dso_local i32 @pciehp_green_led_off(%struct.slot*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

declare dso_local i32 @ctrl_warn(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
