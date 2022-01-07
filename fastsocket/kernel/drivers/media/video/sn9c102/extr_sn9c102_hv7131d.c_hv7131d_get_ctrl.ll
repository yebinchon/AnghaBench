; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131d.c_hv7131d_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_hv7131d.c_hv7131d_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @hv7131d_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv7131d_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
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
  switch i32 %10, label %118 [
    i32 129, label %11
    i32 128, label %34
    i32 130, label %52
    i32 133, label %70
    i32 131, label %88
    i32 132, label %103
  ]

11:                                               ; preds = %2
  %12 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %13 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %12, i32 38)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %16 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %15, i32 39)
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
  br label %121

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 255
  %31 = or i32 %28, %30
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %121

34:                                               ; preds = %2
  %35 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %36 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %35, i32 49)
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
  br label %121

44:                                               ; preds = %34
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 63
  %49 = sub nsw i32 63, %48
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  store i32 0, i32* %3, align 4
  br label %121

52:                                               ; preds = %2
  %53 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %54 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %53, i32 51)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = icmp slt i32 %55, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %121

62:                                               ; preds = %52
  %63 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %64 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 63
  %67 = sub nsw i32 63, %66
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %121

70:                                               ; preds = %2
  %71 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %72 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %71, i32 50)
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = icmp slt i32 %73, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %121

80:                                               ; preds = %70
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 63
  %85 = sub nsw i32 63, %84
  %86 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %121

88:                                               ; preds = %2
  %89 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %90 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %89, i32 48)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %93 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = icmp slt i32 %91, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %121

98:                                               ; preds = %88
  %99 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %100 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 63
  store i32 %102, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %121

103:                                              ; preds = %2
  %104 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %105 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %104, i32 52)
  %106 = ptrtoint i8* %105 to i32
  %107 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = icmp slt i32 %106, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* @EIO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %121

113:                                              ; preds = %103
  %114 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 7
  store i32 %117, i32* %115, align 4
  store i32 0, i32* %3, align 4
  br label %121

118:                                              ; preds = %2
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %118, %113, %110, %98, %95, %80, %77, %62, %59, %44, %41, %26, %23
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i8* @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
