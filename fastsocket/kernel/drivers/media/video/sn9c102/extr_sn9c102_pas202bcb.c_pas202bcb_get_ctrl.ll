; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_pas202bcb.c_pas202bcb_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_pas202bcb.c_pas202bcb_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @pas202bcb_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas202bcb_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %105 [
    i32 130, label %11
    i32 128, label %34
    i32 131, label %49
    i32 129, label %64
    i32 132, label %79
    i32 133, label %94
  ]

11:                                               ; preds = %2
  %12 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %13 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %12, i32 4)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %16 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %15, i32 5)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %11
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %108

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 6
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 63
  %31 = or i32 %28, %30
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %108

34:                                               ; preds = %2
  %35 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %36 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %35, i32 9)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = icmp slt i32 %37, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %108

44:                                               ; preds = %34
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 15
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %108

49:                                               ; preds = %2
  %50 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %51 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %50, i32 7)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = icmp slt i32 %52, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %108

59:                                               ; preds = %49
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %108

64:                                               ; preds = %2
  %65 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %66 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %65, i32 16)
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = icmp slt i32 %67, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %108

74:                                               ; preds = %64
  %75 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 31
  store i32 %78, i32* %76, align 4
  store i32 0, i32* %3, align 4
  br label %108

79:                                               ; preds = %2
  %80 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %81 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %80, i32 8)
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = icmp slt i32 %82, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %108

89:                                               ; preds = %79
  %90 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 15
  store i32 %93, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %108

94:                                               ; preds = %2
  %95 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %96 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %95, i32 12)
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %99 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = icmp slt i32 %97, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %108

104:                                              ; preds = %94
  store i32 0, i32* %3, align 4
  br label %108

105:                                              ; preds = %2
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %104, %101, %89, %86, %74, %71, %59, %56, %44, %41, %26, %23
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i8* @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
