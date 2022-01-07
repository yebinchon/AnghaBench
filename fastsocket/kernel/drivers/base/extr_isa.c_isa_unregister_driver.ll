; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_isa.c_isa_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_isa.c_isa_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_driver = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_unregister_driver(%struct.isa_driver* %0) #0 {
  %2 = alloca %struct.isa_driver*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.isa_driver* %0, %struct.isa_driver** %2, align 8
  %5 = load %struct.isa_driver*, %struct.isa_driver** %2, align 8
  %6 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %5, i32 0, i32 1
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.TYPE_2__* @to_isa_dev(%struct.device* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @device_unregister(%struct.device* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %18, %struct.device** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.isa_driver*, %struct.isa_driver** %2, align 8
  %21 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %20, i32 0, i32 0
  %22 = call i32 @driver_unregister(i32* %21)
  ret void
}

declare dso_local %struct.TYPE_2__* @to_isa_dev(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @driver_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
