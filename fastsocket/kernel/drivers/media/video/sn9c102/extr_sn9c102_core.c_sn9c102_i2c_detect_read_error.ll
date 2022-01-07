; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_detect_read_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_i2c_detect_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i64 }
%struct.sn9c102_sensor = type { i32 }

@BRIDGE_SN9C101 = common dso_local global i64 0, align 8
@BRIDGE_SN9C102 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.sn9c102_sensor*)* @sn9c102_i2c_detect_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_i2c_detect_read_error(%struct.sn9c102_device* %0, %struct.sn9c102_sensor* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.sn9c102_sensor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.sn9c102_sensor* %1, %struct.sn9c102_sensor** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %8 = call i32 @sn9c102_read_reg(%struct.sn9c102_device* %7, i32 8)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %17 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BRIDGE_SN9C101, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %23 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BRIDGE_SN9C102, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %15
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %27
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %34
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %50

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  ret i32 %51
}

declare dso_local i32 @sn9c102_read_reg(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
