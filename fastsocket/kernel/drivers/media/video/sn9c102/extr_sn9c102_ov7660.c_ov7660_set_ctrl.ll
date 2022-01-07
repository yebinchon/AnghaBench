; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7660.c_ov7660_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7660.c_ov7660_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @ov7660_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7660_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
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
  switch i32 %9, label %80 [
    i32 130, label %10
    i32 131, label %18
    i32 128, label %28
    i32 132, label %36
    i32 134, label %44
    i32 135, label %52
    i32 129, label %61
    i32 133, label %70
  ]

10:                                               ; preds = %2
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %12 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %11, i32 16, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %20 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %21 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 2
  %24 = or i32 67, %23
  %25 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %19, i32 %24, i32 2)
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %83

28:                                               ; preds = %2
  %29 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %30 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %29, i32 %32, i32 5)
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %83

36:                                               ; preds = %2
  %37 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %37, i32 %40, i32 6)
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %83

44:                                               ; preds = %2
  %45 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %46 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %45, i32 %48, i32 7)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %83

52:                                               ; preds = %2
  %53 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 3
  %58 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %53, i32 %57, i32 59)
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %83

61:                                               ; preds = %2
  %62 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 96, %65
  %67 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %62, i32 0, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %83

70:                                               ; preds = %2
  %71 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %72 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 7
  %76 = or i32 192, %75
  %77 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %71, i32 19, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %2
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %92

83:                                               ; preds = %70, %61, %52, %44, %36, %28, %18, %10
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  br label %90

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %86
  %91 = phi i32 [ %88, %86 ], [ 0, %89 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %80
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
