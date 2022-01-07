; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_driver = type { i32 }

@driver_attr_new_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_unregister_driver(%struct.hid_driver* %0) #0 {
  %2 = alloca %struct.hid_driver*, align 8
  store %struct.hid_driver* %0, %struct.hid_driver** %2, align 8
  %3 = load %struct.hid_driver*, %struct.hid_driver** %2, align 8
  %4 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %3, i32 0, i32 0
  %5 = call i32 @driver_remove_file(i32* %4, i32* @driver_attr_new_id)
  %6 = load %struct.hid_driver*, %struct.hid_driver** %2, align 8
  %7 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %6, i32 0, i32 0
  %8 = call i32 @driver_unregister(i32* %7)
  %9 = load %struct.hid_driver*, %struct.hid_driver** %2, align 8
  %10 = call i32 @hid_free_dynids(%struct.hid_driver* %9)
  ret void
}

declare dso_local i32 @driver_remove_file(i32*, i32*) #1

declare dso_local i32 @driver_unregister(i32*) #1

declare dso_local i32 @hid_free_dynids(%struct.hid_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
