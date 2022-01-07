; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_driver.c_i2o_driver_notify_device_remove_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_driver.c_i2o_driver_notify_device_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_driver = type { i32 }
%struct.i2o_device = type { i32 }

@i2o_max_drivers = common dso_local global i32 0, align 4
@i2o_drivers = common dso_local global %struct.i2o_driver** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2o_driver_notify_device_remove_all(%struct.i2o_device* %0) #0 {
  %2 = alloca %struct.i2o_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2o_driver*, align 8
  store %struct.i2o_device* %0, %struct.i2o_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @i2o_max_drivers, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.i2o_driver**, %struct.i2o_driver*** @i2o_drivers, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.i2o_driver*, %struct.i2o_driver** %10, i64 %12
  %14 = load %struct.i2o_driver*, %struct.i2o_driver** %13, align 8
  store %struct.i2o_driver* %14, %struct.i2o_driver** %4, align 8
  %15 = load %struct.i2o_driver*, %struct.i2o_driver** %4, align 8
  %16 = icmp ne %struct.i2o_driver* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load %struct.i2o_driver*, %struct.i2o_driver** %4, align 8
  %19 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %20 = call i32 @i2o_driver_notify_device_remove(%struct.i2o_driver* %18, %struct.i2o_device* %19)
  br label %21

21:                                               ; preds = %17, %9
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  ret void
}

declare dso_local i32 @i2o_driver_notify_device_remove(%struct.i2o_driver*, %struct.i2o_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
