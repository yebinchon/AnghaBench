; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_exec_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_exec-osm.c_i2o_exec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2o_device* }

@i2o_exec_driver = common dso_local global i32 0, align 4
@dev_attr_vendor_id = common dso_local global i32 0, align 4
@dev_attr_product_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2o_exec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_exec_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.i2o_device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.i2o_device* @to_i2o_device(%struct.device* %6)
  store %struct.i2o_device* %7, %struct.i2o_device** %4, align 8
  %8 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %9 = call i32 @i2o_event_register(%struct.i2o_device* %8, i32* @i2o_exec_driver, i32 0, i32 -1)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @device_create_file(%struct.device* %14, i32* @dev_attr_vendor_id)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %34

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_create_file(%struct.device* %20, i32* @dev_attr_product_id)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  %26 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %27 = load %struct.i2o_device*, %struct.i2o_device** %4, align 8
  %28 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.i2o_device* %26, %struct.i2o_device** %30, align 8
  store i32 0, i32* %2, align 4
  br label %40

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i32 @device_remove_file(%struct.device* %32, i32* @dev_attr_vendor_id)
  br label %34

34:                                               ; preds = %31, %18
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call %struct.i2o_device* @to_i2o_device(%struct.device* %35)
  %37 = call i32 @i2o_event_register(%struct.i2o_device* %36, i32* @i2o_exec_driver, i32 0, i32 0)
  br label %38

38:                                               ; preds = %34, %12
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %25
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.i2o_device* @to_i2o_device(%struct.device*) #1

declare dso_local i32 @i2o_event_register(%struct.i2o_device*, i32*, i32, i32) #1

declare dso_local i32 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
