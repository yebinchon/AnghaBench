; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_driver_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c_vmbus_driver_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_driver = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"unregistering driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_driver_unregister(%struct.hv_driver* %0) #0 {
  %2 = alloca %struct.hv_driver*, align 8
  store %struct.hv_driver* %0, %struct.hv_driver** %2, align 8
  %3 = load %struct.hv_driver*, %struct.hv_driver** %2, align 8
  %4 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 (...) @vmbus_exists()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.hv_driver*, %struct.hv_driver** %2, align 8
  %11 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %10, i32 0, i32 0
  %12 = call i32 @driver_unregister(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @vmbus_exists(...) #1

declare dso_local i32 @driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
