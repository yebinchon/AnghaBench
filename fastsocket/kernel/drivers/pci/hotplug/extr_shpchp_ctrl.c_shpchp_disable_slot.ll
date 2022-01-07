; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_disable_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_shpchp_disable_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { %struct.controller*, %struct.TYPE_2__* }
%struct.controller = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.slot*, i64*)*, i32 (%struct.slot*, i64*)*, i32 (%struct.slot*, i64*)* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No adapter on slot(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Latch open on slot(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Already disabled on slot(%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slot*)* @shpchp_disable_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shpchp_disable_slot(%struct.slot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slot*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.slot*, %struct.slot** %3, align 8
  %11 = getelementptr inbounds %struct.slot, %struct.slot* %10, i32 0, i32 0
  %12 = load %struct.controller*, %struct.controller** %11, align 8
  store %struct.controller* %12, %struct.controller** %7, align 8
  %13 = load %struct.slot*, %struct.slot** %3, align 8
  %14 = getelementptr inbounds %struct.slot, %struct.slot* %13, i32 0, i32 0
  %15 = load %struct.controller*, %struct.controller** %14, align 8
  %16 = icmp ne %struct.controller* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %91

20:                                               ; preds = %1
  %21 = load %struct.slot*, %struct.slot** %3, align 8
  %22 = getelementptr inbounds %struct.slot, %struct.slot* %21, i32 0, i32 0
  %23 = load %struct.controller*, %struct.controller** %22, align 8
  %24 = getelementptr inbounds %struct.controller, %struct.controller* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.slot*, %struct.slot** %3, align 8
  %27 = getelementptr inbounds %struct.slot, %struct.slot* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.slot*, i64*)*, i32 (%struct.slot*, i64*)** %29, align 8
  %31 = load %struct.slot*, %struct.slot** %3, align 8
  %32 = call i32 %30(%struct.slot* %31, i64* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35, %20
  %39 = load %struct.controller*, %struct.controller** %7, align 8
  %40 = load %struct.slot*, %struct.slot** %3, align 8
  %41 = call i32 @slot_name(%struct.slot* %40)
  %42 = call i32 @ctrl_info(%struct.controller* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %84

43:                                               ; preds = %35
  %44 = load %struct.slot*, %struct.slot** %3, align 8
  %45 = getelementptr inbounds %struct.slot, %struct.slot* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32 (%struct.slot*, i64*)*, i32 (%struct.slot*, i64*)** %47, align 8
  %49 = load %struct.slot*, %struct.slot** %3, align 8
  %50 = call i32 %48(%struct.slot* %49, i64* %4)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53, %43
  %57 = load %struct.controller*, %struct.controller** %7, align 8
  %58 = load %struct.slot*, %struct.slot** %3, align 8
  %59 = call i32 @slot_name(%struct.slot* %58)
  %60 = call i32 @ctrl_info(%struct.controller* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %84

61:                                               ; preds = %53
  %62 = load %struct.slot*, %struct.slot** %3, align 8
  %63 = getelementptr inbounds %struct.slot, %struct.slot* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32 (%struct.slot*, i64*)*, i32 (%struct.slot*, i64*)** %65, align 8
  %67 = load %struct.slot*, %struct.slot** %3, align 8
  %68 = call i32 %66(%struct.slot* %67, i64* %4)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71, %61
  %75 = load %struct.controller*, %struct.controller** %7, align 8
  %76 = load %struct.slot*, %struct.slot** %3, align 8
  %77 = call i32 @slot_name(%struct.slot* %76)
  %78 = call i32 @ctrl_info(%struct.controller* %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %84

79:                                               ; preds = %71
  %80 = load %struct.slot*, %struct.slot** %3, align 8
  %81 = call i32 @remove_board(%struct.slot* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.slot*, %struct.slot** %3, align 8
  %83 = call i32 @update_slot_info(%struct.slot* %82)
  br label %84

84:                                               ; preds = %79, %74, %56, %38
  %85 = load %struct.slot*, %struct.slot** %3, align 8
  %86 = getelementptr inbounds %struct.slot, %struct.slot* %85, i32 0, i32 0
  %87 = load %struct.controller*, %struct.controller** %86, align 8
  %88 = getelementptr inbounds %struct.controller, %struct.controller* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %17
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @remove_board(%struct.slot*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
