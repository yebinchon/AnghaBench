; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @hv7131r_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv7131r_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %63 [
    i32 129, label %11
    i32 128, label %19
    i32 130, label %27
    i32 132, label %35
    i32 131, label %43
  ]

11:                                               ; preds = %2
  %12 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %12, i32 48, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %66

19:                                               ; preds = %2
  %20 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %20, i32 49, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %66

27:                                               ; preds = %2
  %28 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %28, i32 51, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %66

35:                                               ; preds = %2
  %36 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %37 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %36, i32 50, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %66

43:                                               ; preds = %2
  %44 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %45 = call i32 @sn9c102_i2c_read(%struct.sn9c102_device* %44, i32 1)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %75

51:                                               ; preds = %43
  %52 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 3
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 247
  %59 = or i32 %56, %58
  %60 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %52, i32 1, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %66

63:                                               ; preds = %2
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %75

66:                                               ; preds = %51, %35, %27, %19, %11
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %63, %48
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
