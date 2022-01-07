; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7660.c_ov7660_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7660.c_ov7660_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @ov7660_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7660_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
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
  switch i32 %9, label %131 [
    i32 130, label %10
    i32 131, label %21
    i32 128, label %41
    i32 132, label %56
    i32 134, label %71
    i32 135, label %86
    i32 129, label %101
    i32 133, label %116
  ]

10:                                               ; preds = %2
  %11 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %12 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %11, i32 16)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %143

20:                                               ; preds = %10
  br label %134

21:                                               ; preds = %2
  %22 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %23 = call i8* @sn9c102_read_reg(%struct.sn9c102_device* %22, i32 2)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = icmp slt i32 %24, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %143

31:                                               ; preds = %21
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %134

41:                                               ; preds = %2
  %42 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %43 = call i8* @sn9c102_read_reg(%struct.sn9c102_device* %42, i32 5)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = icmp slt i32 %44, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %143

51:                                               ; preds = %41
  %52 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  store i32 %55, i32* %53, align 4
  br label %134

56:                                               ; preds = %2
  %57 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %58 = call i8* @sn9c102_read_reg(%struct.sn9c102_device* %57, i32 6)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = icmp slt i32 %59, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %143

66:                                               ; preds = %56
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 127
  store i32 %70, i32* %68, align 4
  br label %134

71:                                               ; preds = %2
  %72 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %73 = call i8* @sn9c102_read_reg(%struct.sn9c102_device* %72, i32 7)
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
  br label %143

81:                                               ; preds = %71
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 127
  store i32 %85, i32* %83, align 4
  br label %134

86:                                               ; preds = %2
  %87 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %88 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %87, i32 59)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %91 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = icmp slt i32 %89, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %143

96:                                               ; preds = %86
  %97 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 8
  store i32 %100, i32* %98, align 4
  br label %134

101:                                              ; preds = %2
  %102 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %103 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %102, i32 0)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = icmp slt i32 %104, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %143

111:                                              ; preds = %101
  %112 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 31
  store i32 %115, i32* %113, align 4
  br label %134

116:                                              ; preds = %2
  %117 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %118 = call i8* @sn9c102_i2c_read(%struct.sn9c102_device* %117, i32 19)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = icmp slt i32 %119, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %143

126:                                              ; preds = %116
  %127 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %134

131:                                              ; preds = %2
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %143

134:                                              ; preds = %126, %111, %96, %81, %66, %51, %31, %20
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  br label %141

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32 [ %139, %137 ], [ 0, %140 ]
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %131, %123, %108, %93, %78, %63, %48, %28, %17
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i8* @sn9c102_i2c_read(%struct.sn9c102_device*, i32) #1

declare dso_local i8* @sn9c102_read_reg(%struct.sn9c102_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
