; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wl1271 = type { i32, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.wl1271*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = call %struct.wl1271* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.wl1271* %6, %struct.wl1271** %4, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 4
  %9 = call i32 @wait_for_completion(i32* %8)
  %10 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %17 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_init_wakeup(i32 %23, i32 0)
  %25 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @disable_irq_wake(i32 %27)
  br label %29

29:                                               ; preds = %20, %15
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = call i32 @wl1271_unregister_hw(%struct.wl1271* %30)
  %32 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.wl1271* %35)
  %37 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %38 = call i32 @wlcore_free_hw(%struct.wl1271* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.wl1271* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @wl1271_unregister_hw(%struct.wl1271*) #1

declare dso_local i32 @free_irq(i32, %struct.wl1271*) #1

declare dso_local i32 @wlcore_free_hw(%struct.wl1271*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
