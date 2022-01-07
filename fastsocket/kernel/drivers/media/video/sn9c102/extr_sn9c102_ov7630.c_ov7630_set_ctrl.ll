; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_ov7630.c_ov7630_set_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@BRIDGE_SN9C105 = common dso_local global i32 0, align 4
@BRIDGE_SN9C120 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_control*)* @ov7630_set_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7630_set_ctrl(%struct.sn9c102_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %9 = call i32 @sn9c102_get_bridge(%struct.sn9c102_device* %8)
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %144 [
    i32 132, label %13
    i32 130, label %21
    i32 134, label %46
    i32 136, label %54
    i32 131, label %79
    i32 133, label %87
    i32 128, label %95
    i32 135, label %103
    i32 129, label %116
    i32 137, label %126
    i32 138, label %135
  ]

13:                                               ; preds = %2
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %14, i32 16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %147

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BRIDGE_SN9C105, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @BRIDGE_SN9C120, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %21
  %30 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %31 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %30, i32 %33, i32 5)
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %45

37:                                               ; preds = %25
  %38 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %38, i32 %41, i32 7)
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %29
  br label %147

46:                                               ; preds = %2
  %47 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %47, i32 %50, i32 6)
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %7, align 4
  br label %147

54:                                               ; preds = %2
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @BRIDGE_SN9C105, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @BRIDGE_SN9C120, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %54
  %63 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %64 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %63, i32 %66, i32 7)
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %78

70:                                               ; preds = %58
  %71 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %72 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %71, i32 %74, i32 5)
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %70, %62
  br label %147

79:                                               ; preds = %2
  %80 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %80, i32 0, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %147

87:                                               ; preds = %2
  %88 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %88, i32 12, i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %147

95:                                               ; preds = %2
  %96 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %97 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %96, i32 13, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %7, align 4
  br label %147

103:                                              ; preds = %2
  %104 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %105 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 1
  %112 = or i32 %107, %111
  %113 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %104, i32 19, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %147

116:                                              ; preds = %2
  %117 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %118 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 7
  %122 = or i32 14, %121
  %123 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %117, i32 117, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %147

126:                                              ; preds = %2
  %127 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %128 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %129 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 2
  %132 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %127, i32 20, i32 %131)
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %7, align 4
  br label %147

135:                                              ; preds = %2
  %136 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %137 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 2
  %141 = call i32 @sn9c102_i2c_write(%struct.sn9c102_device* %136, i32 45, i32 %140)
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %147

144:                                              ; preds = %2
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %156

147:                                              ; preds = %135, %126, %116, %103, %95, %87, %79, %78, %46, %45, %13
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @EIO, align 4
  %152 = sub nsw i32 0, %151
  br label %154

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %153, %150
  %155 = phi i32 [ %152, %150 ], [ 0, %153 ]
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %144
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @sn9c102_get_bridge(%struct.sn9c102_device*) #1

declare dso_local i32 @sn9c102_i2c_write(%struct.sn9c102_device*, i32, i32) #1

declare dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
