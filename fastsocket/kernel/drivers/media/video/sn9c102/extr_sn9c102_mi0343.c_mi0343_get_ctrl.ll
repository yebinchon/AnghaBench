; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_mi0343.c_mi0343_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.sn9c102_sensor = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @mi0343_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi0343_get_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.sn9c102_sensor*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device* %8)
  store %struct.sn9c102_sensor* %9, %struct.sn9c102_sensor** %6, align 8
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %124 [
    i32 132, label %13
    i32 131, label %30
    i32 130, label %43
    i32 128, label %64
    i32 129, label %85
    i32 133, label %98
    i32 134, label %111
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %16 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %14, %struct.sn9c102_sensor* %15, i32 %18, i32 9, i32 2, i32* %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %188

25:                                               ; preds = %13
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %188

30:                                               ; preds = %2
  %31 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %32 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %33 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %34 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %31, %struct.sn9c102_sensor* %32, i32 %35, i32 53, i32 2, i32* %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %188

42:                                               ; preds = %30
  br label %127

43:                                               ; preds = %2
  %44 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %45 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %46 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %47 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %50 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %44, %struct.sn9c102_sensor* %45, i32 %48, i32 32, i32 2, i32* %49)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %188

55:                                               ; preds = %43
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 32
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %188

64:                                               ; preds = %2
  %65 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %66 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %67 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %68 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %71 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %65, %struct.sn9c102_sensor* %66, i32 %69, i32 32, i32 2, i32* %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %188

76:                                               ; preds = %64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 128
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  %83 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %188

85:                                               ; preds = %2
  %86 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %87 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %88 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %89 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %92 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %86, %struct.sn9c102_sensor* %87, i32 %90, i32 45, i32 2, i32* %91)
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %188

97:                                               ; preds = %85
  br label %127

98:                                               ; preds = %2
  %99 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %100 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %101 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %102 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %105 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %99, %struct.sn9c102_sensor* %100, i32 %103, i32 44, i32 2, i32* %104)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %98
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %188

110:                                              ; preds = %98
  br label %127

111:                                              ; preds = %2
  %112 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %113 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %114 = load %struct.sn9c102_sensor*, %struct.sn9c102_sensor** %6, align 8
  %115 = getelementptr inbounds %struct.sn9c102_sensor, %struct.sn9c102_sensor* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %118 = call i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device* %112, %struct.sn9c102_sensor* %113, i32 %116, i32 46, i32 2, i32* %117)
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %188

123:                                              ; preds = %111
  br label %127

124:                                              ; preds = %2
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %188

127:                                              ; preds = %123, %110, %97, %42
  %128 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %187 [
    i32 131, label %131
    i32 129, label %131
    i32 133, label %131
    i32 134, label %131
  ]

131:                                              ; preds = %127, %127, %127, %127
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 8
  %137 = or i32 %133, %136
  %138 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %139 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %142, 16
  br i1 %143, label %144, label %154

144:                                              ; preds = %131
  %145 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp sle i32 %147, 63
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %152, 16
  store i32 %153, i32* %151, align 4
  br label %186

154:                                              ; preds = %144, %131
  %155 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %156 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %157, 96
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %161 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %162, 127
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %166 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sub nsw i32 %167, 96
  store i32 %168, i32* %166, align 4
  br label %185

169:                                              ; preds = %159, %154
  %170 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %171 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %172, 224
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %176 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sle i32 %177, 255
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %181 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 224
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %179, %174, %169
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %149
  br label %187

187:                                              ; preds = %186, %127
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %124, %120, %107, %94, %76, %73, %55, %52, %39, %25, %22
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.sn9c102_sensor* @sn9c102_get_sensor(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_try_raw_read(%struct.sn9c102_device*, %struct.sn9c102_sensor*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
