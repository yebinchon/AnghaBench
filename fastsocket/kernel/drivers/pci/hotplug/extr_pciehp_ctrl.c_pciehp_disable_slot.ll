; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_disable_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_ctrl.c_pciehp_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller* }
%struct.controller = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"No adapter on slot(%s)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Latch open on slot(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Already disabled on slot(%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pciehp_disable_slot(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.slot*, %struct.slot** %3, align 8
  %8 = getelementptr inbounds %struct.slot, %struct.slot* %7, i32 0, i32 0
  %9 = load %struct.controller*, %struct.controller** %8, align 8
  store %struct.controller* %9, %struct.controller** %6, align 8
  %10 = load %struct.slot*, %struct.slot** %3, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %12 = load %struct.controller*, %struct.controller** %11, align 8
  %13 = icmp ne %struct.controller* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.slot*, %struct.slot** %3, align 8
  %17 = getelementptr inbounds %struct.slot, %struct.slot* %16, i32 0, i32 0
  %18 = load %struct.controller*, %struct.controller** %17, align 8
  %19 = call i32 @HP_SUPR_RM(%struct.controller* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = load %struct.slot*, %struct.slot** %3, align 8
  %23 = call i32 @pciehp_get_adapter_status(%struct.slot* %22, i64* %4)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.controller*, %struct.controller** %6, align 8
  %31 = load %struct.slot*, %struct.slot** %3, align 8
  %32 = call i32 @slot_name(%struct.slot* %31)
  %33 = call i32 @ctrl_info(%struct.controller* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36, %15
  %38 = load %struct.slot*, %struct.slot** %3, align 8
  %39 = getelementptr inbounds %struct.slot, %struct.slot* %38, i32 0, i32 0
  %40 = load %struct.controller*, %struct.controller** %39, align 8
  %41 = call i64 @MRL_SENS(%struct.controller* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.slot*, %struct.slot** %3, align 8
  %45 = call i32 @pciehp_get_latch_status(%struct.slot* %44, i64* %4)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %4, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48, %43
  %52 = load %struct.controller*, %struct.controller** %6, align 8
  %53 = load %struct.slot*, %struct.slot** %3, align 8
  %54 = call i32 @slot_name(%struct.slot* %53)
  %55 = call i32 @ctrl_info(%struct.controller* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.slot*, %struct.slot** %3, align 8
  %61 = getelementptr inbounds %struct.slot, %struct.slot* %60, i32 0, i32 0
  %62 = load %struct.controller*, %struct.controller** %61, align 8
  %63 = call i64 @POWER_CTRL(%struct.controller* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %59
  %66 = load %struct.slot*, %struct.slot** %3, align 8
  %67 = call i32 @pciehp_get_power_status(%struct.slot* %66, i64* %4)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %4, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.controller*, %struct.controller** %6, align 8
  %75 = load %struct.slot*, %struct.slot** %3, align 8
  %76 = call i32 @slot_name(%struct.slot* %75)
  %77 = call i32 @ctrl_info(%struct.controller* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %87

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %59
  %82 = load %struct.slot*, %struct.slot** %3, align 8
  %83 = call i32 @remove_board(%struct.slot* %82)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.slot*, %struct.slot** %3, align 8
  %85 = call i32 @update_slot_info(%struct.slot* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %81, %73, %51, %29, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @HP_SUPR_RM(%struct.controller*) #1

declare dso_local i32 @pciehp_get_adapter_status(%struct.slot*, i64*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i64 @MRL_SENS(%struct.controller*) #1

declare dso_local i32 @pciehp_get_latch_status(%struct.slot*, i64*) #1

declare dso_local i64 @POWER_CTRL(%struct.controller*) #1

declare dso_local i32 @pciehp_get_power_status(%struct.slot*, i64*) #1

declare dso_local i32 @remove_board(%struct.slot*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
