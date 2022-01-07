; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2o_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2o_block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"device removed (TID: %03x): %s\0A\00", align 1
@i2o_block_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @i2o_block_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2o_device*, align 8
  %4 = alloca %struct.i2o_block_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.i2o_device* @to_i2o_device(%struct.device* %5)
  store %struct.i2o_device* %6, %struct.i2o_device** %3, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.i2o_block_device* @dev_get_drvdata(%struct.device* %7)
  store %struct.i2o_block_device* %8, %struct.i2o_block_device** %4, align 8
  %9 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %10 = getelementptr inbounds %struct.i2o_device, %struct.i2o_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %14 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @osm_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %20 = call i32 @i2o_event_register(%struct.i2o_device* %19, i32* @i2o_block_driver, i32 0, i32 0)
  %21 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %22 = getelementptr inbounds %struct.i2o_block_device, %struct.i2o_block_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @del_gendisk(%struct.TYPE_4__* %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @dev_set_drvdata(%struct.device* %25, i32* null)
  %27 = load %struct.i2o_device*, %struct.i2o_device** %3, align 8
  %28 = call i32 @i2o_device_claim_release(%struct.i2o_device* %27)
  %29 = load %struct.i2o_block_device*, %struct.i2o_block_device** %4, align 8
  %30 = call i32 @i2o_block_device_free(%struct.i2o_block_device* %29)
  ret i32 0
}

declare dso_local %struct.i2o_device* @to_i2o_device(%struct.device*) #1

declare dso_local %struct.i2o_block_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @osm_info(i8*, i32, i32) #1

declare dso_local i32 @i2o_event_register(%struct.i2o_device*, i32*, i32, i32) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @i2o_device_claim_release(%struct.i2o_device*) #1

declare dso_local i32 @i2o_block_device_free(%struct.i2o_block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
