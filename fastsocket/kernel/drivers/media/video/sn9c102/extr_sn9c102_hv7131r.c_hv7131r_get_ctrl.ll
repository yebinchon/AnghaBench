; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131r.c_hv7131r_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @hv7131r_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv7131r_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %6 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %91 [
    i32 129, label %9
    i32 128, label %20
    i32 130, label %37
    i32 132, label %54
    i32 131, label %71
  ]

9:                                                ; preds = %2
  %10 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %11 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %10, i32 48)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %22 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %21, i32 49)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = icmp slt i32 %23, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %94

30:                                               ; preds = %20
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 63
  %35 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %94

37:                                               ; preds = %2
  %38 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %39 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %38, i32 51)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = icmp slt i32 %40, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %94

47:                                               ; preds = %37
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 63
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %94

54:                                               ; preds = %2
  %55 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %56 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %55, i32 50)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = icmp slt i32 %57, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %94

64:                                               ; preds = %54
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 63
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %94

71:                                               ; preds = %2
  %72 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %73 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %72, i32 1)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = icmp slt i32 %74, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %94

81:                                               ; preds = %71
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %94

91:                                               ; preds = %2
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %81, %78, %64, %61, %47, %44, %30, %27, %19, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i8* @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
