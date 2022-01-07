; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131d.c_hv7131d_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131d.c_hv7131d_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @hv7131d_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv7131d_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %70 [
    i32 129, label %10
    i32 128, label %27
    i32 130, label %36
    i32 133, label %45
    i32 131, label %54
    i32 132, label %62
  ]

10:                                               ; preds = %2
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 8
  %16 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %11, i32 38, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %19, i32 39, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 63, %31
  %33 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %28, i32 49, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %73

36:                                               ; preds = %2
  %37 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 63, %40
  %42 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %37, i32 51, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %73

45:                                               ; preds = %2
  %46 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 63, %49
  %51 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %46, i32 50, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %73

54:                                               ; preds = %2
  %55 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %55, i32 48, i32 %58)
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %73

62:                                               ; preds = %2
  %63 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %64 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %63, i32 52, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %73

70:                                               ; preds = %2
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %82

73:                                               ; preds = %62, %54, %45, %36, %27, %10
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %70
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
