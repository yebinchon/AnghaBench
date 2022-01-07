; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_device_by_slot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mca/extr_mca-legacy.c_mca_find_device_by_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32 }
%struct.mca_find_device_by_slot_info = type { i32, %struct.mca_device* }

@mca_bus_type = common dso_local global i32 0, align 4
@mca_find_device_by_slot_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mca_device* @mca_find_device_by_slot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mca_find_device_by_slot_info, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = getelementptr inbounds %struct.mca_find_device_by_slot_info, %struct.mca_find_device_by_slot_info* %3, i32 0, i32 0
  store i32 %4, i32* %5, align 8
  %6 = getelementptr inbounds %struct.mca_find_device_by_slot_info, %struct.mca_find_device_by_slot_info* %3, i32 0, i32 1
  store %struct.mca_device* null, %struct.mca_device** %6, align 8
  %7 = load i32, i32* @mca_find_device_by_slot_callback, align 4
  %8 = call i32 @bus_for_each_dev(i32* @mca_bus_type, i32* null, %struct.mca_find_device_by_slot_info* %3, i32 %7)
  %9 = getelementptr inbounds %struct.mca_find_device_by_slot_info, %struct.mca_find_device_by_slot_info* %3, i32 0, i32 1
  %10 = load %struct.mca_device*, %struct.mca_device** %9, align 8
  ret %struct.mca_device* %10
}

declare dso_local i32 @bus_for_each_dev(i32*, i32*, %struct.mca_find_device_by_slot_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
