; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_handle_button_press_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_shpchp_ctrl.c_handle_button_press_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i32, %struct.TYPE_2__*, i32, %struct.controller* }
%struct.TYPE_2__ = type { i32 (%struct.slot*, i32)*, i32 (%struct.slot*)*, i32 (%struct.slot*)*, i32 (%struct.slot*)*, i32 (%struct.slot*, i32*)* }
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
  %3 = alloca i32, align 4
  %4 = alloca %struct.controller*, align 8
  store %struct.slot* %0, %struct.slot** %2, align 8
  %5 = load %struct.slot*, %struct.slot** %2, align 8
  %6 = getelementptr inbounds %struct.slot, %struct.slot* %5, i32 0, i32 3
  %7 = load %struct.controller*, %struct.controller** %6, align 8
  store %struct.controller* %7, %struct.controller** %4, align 8
  %8 = load %struct.slot*, %struct.slot** %2, align 8
  %9 = getelementptr inbounds %struct.slot, %struct.slot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %104 [
    i32 128, label %11
    i32 132, label %55
    i32 131, label %55
    i32 130, label %97
    i32 129, label %97
  ]

11:                                               ; preds = %1
  %12 = load %struct.slot*, %struct.slot** %2, align 8
  %13 = getelementptr inbounds %struct.slot, %struct.slot* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i32 (%struct.slot*, i32*)*, i32 (%struct.slot*, i32*)** %15, align 8
  %17 = load %struct.slot*, %struct.slot** %2, align 8
  %18 = call i32 %16(%struct.slot* %17, i32* %3)
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.slot*, %struct.slot** %2, align 8
  %23 = getelementptr inbounds %struct.slot, %struct.slot* %22, i32 0, i32 0
  store i32 132, i32* %23, align 8
  %24 = load %struct.controller*, %struct.controller** %4, align 8
  %25 = load %struct.slot*, %struct.slot** %2, align 8
  %26 = call i32 @slot_name(%struct.slot* %25)
  %27 = call i32 @ctrl_info(%struct.controller* %24, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %35

28:                                               ; preds = %11
  %29 = load %struct.slot*, %struct.slot** %2, align 8
  %30 = getelementptr inbounds %struct.slot, %struct.slot* %29, i32 0, i32 0
  store i32 131, i32* %30, align 8
  %31 = load %struct.controller*, %struct.controller** %4, align 8
  %32 = load %struct.slot*, %struct.slot** %2, align 8
  %33 = call i32 @slot_name(%struct.slot* %32)
  %34 = call i32 @ctrl_info(%struct.controller* %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.slot*, %struct.slot** %2, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %39, align 8
  %41 = load %struct.slot*, %struct.slot** %2, align 8
  %42 = call i32 %40(%struct.slot* %41)
  %43 = load %struct.slot*, %struct.slot** %2, align 8
  %44 = getelementptr inbounds %struct.slot, %struct.slot* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %46, align 8
  %48 = load %struct.slot*, %struct.slot** %2, align 8
  %49 = call i32 %47(%struct.slot* %48, i32 0)
  %50 = load %struct.slot*, %struct.slot** %2, align 8
  %51 = getelementptr inbounds %struct.slot, %struct.slot* %50, i32 0, i32 2
  %52 = load i32, i32* @HZ, align 4
  %53 = mul nsw i32 5, %52
  %54 = call i32 @schedule_delayed_work(i32* %51, i32 %53)
  br label %107

55:                                               ; preds = %1, %1
  %56 = load %struct.controller*, %struct.controller** %4, align 8
  %57 = load %struct.slot*, %struct.slot** %2, align 8
  %58 = call i32 @slot_name(%struct.slot* %57)
  %59 = call i32 @ctrl_info(%struct.controller* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.slot*, %struct.slot** %2, align 8
  %61 = getelementptr inbounds %struct.slot, %struct.slot* %60, i32 0, i32 2
  %62 = call i32 @cancel_delayed_work(i32* %61)
  %63 = load %struct.slot*, %struct.slot** %2, align 8
  %64 = getelementptr inbounds %struct.slot, %struct.slot* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 132
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load %struct.slot*, %struct.slot** %2, align 8
  %69 = getelementptr inbounds %struct.slot, %struct.slot* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %71, align 8
  %73 = load %struct.slot*, %struct.slot** %2, align 8
  %74 = call i32 %72(%struct.slot* %73)
  br label %83

75:                                               ; preds = %55
  %76 = load %struct.slot*, %struct.slot** %2, align 8
  %77 = getelementptr inbounds %struct.slot, %struct.slot* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32 (%struct.slot*)*, i32 (%struct.slot*)** %79, align 8
  %81 = load %struct.slot*, %struct.slot** %2, align 8
  %82 = call i32 %80(%struct.slot* %81)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.slot*, %struct.slot** %2, align 8
  %85 = getelementptr inbounds %struct.slot, %struct.slot* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.slot*, i32)*, i32 (%struct.slot*, i32)** %87, align 8
  %89 = load %struct.slot*, %struct.slot** %2, align 8
  %90 = call i32 %88(%struct.slot* %89, i32 0)
  %91 = load %struct.controller*, %struct.controller** %4, align 8
  %92 = load %struct.slot*, %struct.slot** %2, align 8
  %93 = call i32 @slot_name(%struct.slot* %92)
  %94 = call i32 @ctrl_info(%struct.controller* %91, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load %struct.slot*, %struct.slot** %2, align 8
  %96 = getelementptr inbounds %struct.slot, %struct.slot* %95, i32 0, i32 0
  store i32 128, i32* %96, align 8
  br label %107

97:                                               ; preds = %1, %1
  %98 = load %struct.controller*, %struct.controller** %4, align 8
  %99 = load %struct.slot*, %struct.slot** %2, align 8
  %100 = call i32 @slot_name(%struct.slot* %99)
  %101 = call i32 @ctrl_info(%struct.controller* %98, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.slot*, %struct.slot** %2, align 8
  %103 = call i32 @update_slot_info(%struct.slot* %102)
  br label %107

104:                                              ; preds = %1
  %105 = load %struct.controller*, %struct.controller** %4, align 8
  %106 = call i32 @ctrl_warn(%struct.controller* %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %97, %83, %35
  ret void
}

declare dso_local i32 @ctrl_info(%struct.controller*, i8*, i32) #1

declare dso_local i32 @slot_name(%struct.slot*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @update_slot_info(%struct.slot*) #1

declare dso_local i32 @ctrl_warn(%struct.controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
