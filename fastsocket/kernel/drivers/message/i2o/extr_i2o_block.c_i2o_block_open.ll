; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i2o_block_device* }
%struct.i2o_block_device = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @i2o_block_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2o_block_device*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = getelementptr inbounds %struct.block_device, %struct.block_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.i2o_block_device*, %struct.i2o_block_device** %10, align 8
  store %struct.i2o_block_device* %11, %struct.i2o_block_device** %6, align 8
  %12 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %13 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %21 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %26 = call i32 @i2o_block_device_power(%struct.i2o_block_device* %25, i32 2)
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %29 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i2o_block_device_mount(i32 %30, i32 -1)
  %32 = load %struct.i2o_block_device*, %struct.i2o_block_device** %6, align 8
  %33 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i2o_block_device_lock(i32 %34, i32 -1)
  %36 = call i32 @osm_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %16
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @i2o_block_device_power(%struct.i2o_block_device*, i32) #1

declare dso_local i32 @i2o_block_device_mount(i32, i32) #1

declare dso_local i32 @i2o_block_device_lock(i32, i32) #1

declare dso_local i32 @osm_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
