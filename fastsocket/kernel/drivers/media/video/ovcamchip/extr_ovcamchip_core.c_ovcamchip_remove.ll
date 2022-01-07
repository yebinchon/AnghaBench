; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ovcamchip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.ovcamchip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i2c_client*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ovcamchip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovcamchip_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.ovcamchip*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.ovcamchip* @to_ovcamchip(%struct.v4l2_subdev* %9)
  store %struct.ovcamchip* %10, %struct.ovcamchip** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev* %11)
  %13 = load %struct.ovcamchip*, %struct.ovcamchip** %5, align 8
  %14 = getelementptr inbounds %struct.ovcamchip, %struct.ovcamchip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.i2c_client*)*, i32 (%struct.i2c_client*)** %16, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %19 = call i32 %17(%struct.i2c_client* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.ovcamchip*, %struct.ovcamchip** %5, align 8
  %26 = call i32 @kfree(%struct.ovcamchip* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ovcamchip* @to_ovcamchip(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_device_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @kfree(%struct.ovcamchip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
