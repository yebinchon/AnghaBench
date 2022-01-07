; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_driver.c_i2o_bus_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_driver.c_i2o_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.i2o_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.i2o_driver = type { %struct.i2o_class_id* }
%struct.i2o_class_id = type { i64 }

@I2O_CLASS_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @i2o_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.i2o_device*, align 8
  %7 = alloca %struct.i2o_driver*, align 8
  %8 = alloca %struct.i2o_class_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.i2o_device* @to_i2o_device(%struct.device* %9)
  store %struct.i2o_device* %10, %struct.i2o_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.i2o_driver* @to_i2o_driver(%struct.device_driver* %11)
  store %struct.i2o_driver* %12, %struct.i2o_driver** %7, align 8
  %13 = load %struct.i2o_driver*, %struct.i2o_driver** %7, align 8
  %14 = getelementptr inbounds %struct.i2o_driver, %struct.i2o_driver* %13, i32 0, i32 0
  %15 = load %struct.i2o_class_id*, %struct.i2o_class_id** %14, align 8
  store %struct.i2o_class_id* %15, %struct.i2o_class_id** %8, align 8
  %16 = load %struct.i2o_class_id*, %struct.i2o_class_id** %8, align 8
  %17 = icmp ne %struct.i2o_class_id* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %35, %18
  %20 = load %struct.i2o_class_id*, %struct.i2o_class_id** %8, align 8
  %21 = getelementptr inbounds %struct.i2o_class_id, %struct.i2o_class_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @I2O_CLASS_END, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.i2o_class_id*, %struct.i2o_class_id** %8, align 8
  %27 = getelementptr inbounds %struct.i2o_class_id, %struct.i2o_class_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i2o_device*, %struct.i2o_device** %6, align 8
  %30 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.i2o_class_id*, %struct.i2o_class_id** %8, align 8
  %37 = getelementptr inbounds %struct.i2o_class_id, %struct.i2o_class_id* %36, i32 1
  store %struct.i2o_class_id* %37, %struct.i2o_class_id** %8, align 8
  br label %19

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.i2o_device* @to_i2o_device(%struct.device*) #1

declare dso_local %struct.i2o_driver* @to_i2o_driver(%struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
