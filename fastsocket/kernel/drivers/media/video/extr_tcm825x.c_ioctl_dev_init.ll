; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"device not detected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*)* @ioctl_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_dev_init(%struct.v4l2_int_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_int_device*, align 8
  %4 = alloca %struct.tcm825x_sensor*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %3, align 8
  %6 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %7 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %6, i32 0, i32 0
  %8 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %7, align 8
  store %struct.tcm825x_sensor* %8, %struct.tcm825x_sensor** %4, align 8
  %9 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %10 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i32 @tcm825x_read_reg(%struct.TYPE_2__* %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %22 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %29

28:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %20, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @tcm825x_read_reg(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
