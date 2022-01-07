; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_device.c_i2o_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_device = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i2o_bus_type = common dso_local global i32 0, align 4
@i2o_device_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2o_device* ()* @i2o_device_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2o_device* @i2o_device_alloc() #0 {
  %1 = alloca %struct.i2o_device*, align 8
  %2 = alloca %struct.i2o_device*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.i2o_device* @kzalloc(i32 24, i32 %3)
  store %struct.i2o_device* %4, %struct.i2o_device** %2, align 8
  %5 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %6 = icmp ne %struct.i2o_device* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.i2o_device* @ERR_PTR(i32 %9)
  store %struct.i2o_device* %10, %struct.i2o_device** %1, align 8
  br label %25

11:                                               ; preds = %0
  %12 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %13 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %12, i32 0, i32 2
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %16 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %15, i32 0, i32 1
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %19 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32* @i2o_bus_type, i32** %20, align 8
  %21 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  %22 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* @i2o_device_release, i32** %23, align 8
  %24 = load %struct.i2o_device*, %struct.i2o_device** %2, align 8
  store %struct.i2o_device* %24, %struct.i2o_device** %1, align 8
  br label %25

25:                                               ; preds = %11, %7
  %26 = load %struct.i2o_device*, %struct.i2o_device** %1, align 8
  ret %struct.i2o_device* %26
}

declare dso_local %struct.i2o_device* @kzalloc(i32, i32) #1

declare dso_local %struct.i2o_device* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
