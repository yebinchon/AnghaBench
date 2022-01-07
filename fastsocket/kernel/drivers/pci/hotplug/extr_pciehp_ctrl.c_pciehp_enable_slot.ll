; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_enable_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_enable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"No adapter on slot(%s)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Latch open on slot(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Already enabled on slot(%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_enable_slot(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 0
  %9 = load %struct.controller*, %struct.controller** %8, align 8
  store %struct.controller* %9, %struct.controller** %6, align 8
  %10 = load %struct.slot*, %struct.slot** %3, align 8
  %11 = call i32 @pciehp_get_adapter_status(%struct.slot* %10, i64* %4)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.controller*, %struct.controller** %6, align 8
  %19 = load %struct.slot*, %struct.slot** %3, align 8
  %20 = call i32 @slot_name(%struct.slot* %19)
  %21 = call i32 @ctrl_info(%struct.controller* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %82

24:                                               ; preds = %14
  %25 = load %struct.slot*, %struct.slot** %3, align 8
  %26 = getelementptr inbounds %struct.slot, %struct.slot* %25, i32 0, i32 0
  %27 = load %struct.controller*, %struct.controller** %26, align 8
  %28 = call i64 @MRL_SENS(%struct.controller* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.slot*, %struct.slot** %3, align 8
  %32 = call i32 @pciehp_get_latch_status(%struct.slot* %31, i64* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %30
  %39 = load %struct.controller*, %struct.controller** %6, align 8
  %40 = load %struct.slot*, %struct.slot** %3, align 8
  %41 = call i32 @slot_name(%struct.slot* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %82

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.slot*, %struct.slot** %3, align 8
  %48 = getelementptr inbounds %struct.slot, %struct.slot* %47, i32 0, i32 0
  %49 = load %struct.controller*, %struct.controller** %48, align 8
  %50 = call i64 @POWER_CTRL(%struct.controller* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.slot*, %struct.slot** %3, align 8
  %54 = call i32 @pciehp_get_power_status(%struct.slot* %53, i64* %4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57, %52
  %61 = load %struct.controller*, %struct.controller** %6, align 8
  %62 = load %struct.slot*, %struct.slot** %3, align 8
  %63 = call i32 @slot_name(%struct.slot* %62)
  %64 = call i32 @ctrl_info(%struct.controller* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %82

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.slot*, %struct.slot** %3, align 8
  %70 = call i32 @pciehp_get_latch_status(%struct.slot* %69, i64* %4)
  %71 = load %struct.slot*, %struct.slot** %3, align 8
  %72 = call i32 @board_added(%struct.slot* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.slot*, %struct.slot** %3, align 8
  %77 = call i32 @pciehp_get_latch_status(%struct.slot* %76, i64* %4)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load %struct.slot*, %struct.slot** %3, align 8
  %80 = call i32 @update_slot_info(%struct.slot* %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %60, %38, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @pciehp_get_adapter_status(%struct.slot*, i64*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i64 @MRL_SENS(%struct.controller*) #1

declare dso_local i32 @pciehp_get_latch_status(%struct.slot*, i64*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_get_power_status(%struct.slot*, i64*) #1

declare dso_local i32 @board_added(%struct.slot*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
