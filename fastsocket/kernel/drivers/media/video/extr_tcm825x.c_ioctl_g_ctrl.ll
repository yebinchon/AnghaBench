; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.i2c_client = type { i32 }
%struct.v4l2_control = type { i64, i32 }
%struct.vcontrol = type { i32, i32 }

@V4L2_CID_EXPOSURE = common dso_local global i64 0, align 8
@TCM825X_ESRSPD_U = common dso_local global i32 0, align 4
@TCM825X_ESRSPD_L = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i64 0, align 8
@V4L2_CID_VFLIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_control*)* @ioctl_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_g_ctrl(%struct.v4l2_int_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vcontrol*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %13 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %14 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %13, i32 0, i32 0
  %15 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %14, align 8
  store %struct.tcm825x_sensor* %15, %struct.tcm825x_sensor** %6, align 8
  %16 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %17 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_CID_EXPOSURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = load i32, i32* @TCM825X_ESRSPD_U, align 4
  %27 = call i32 @TCM825X_ADDR(i32 %26)
  %28 = call i32 @tcm825x_read_reg(%struct.i2c_client* %25, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %24
  %34 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %35 = load i32, i32* @TCM825X_ESRSPD_L, align 4
  %36 = call i32 @TCM825X_ADDR(i32 %35)
  %37 = call i32 @tcm825x_read_reg(%struct.i2c_client* %34, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %112

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %112

50:                                               ; preds = %2
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.vcontrol* @find_vctrl(i64 %53)
  store %struct.vcontrol* %54, %struct.vcontrol** %10, align 8
  %55 = load %struct.vcontrol*, %struct.vcontrol** %10, align 8
  %56 = icmp eq %struct.vcontrol* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %112

60:                                               ; preds = %50
  %61 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %62 = load %struct.vcontrol*, %struct.vcontrol** %10, align 8
  %63 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TCM825X_ADDR(i32 %64)
  %66 = call i32 @tcm825x_read_reg(%struct.i2c_client* %61, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %112

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.vcontrol*, %struct.vcontrol** %10, align 8
  %74 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @TCM825X_MASK(i32 %75)
  %77 = and i32 %72, %76
  store i32 %77, i32* %8, align 4
  %78 = load %struct.vcontrol*, %struct.vcontrol** %10, align 8
  %79 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, %80
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %112

87:                                               ; preds = %71
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @V4L2_CID_HFLIP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %95 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @V4L2_CID_VFLIP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93, %87
  %100 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %101 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32 (...)*, i32 (...)** %103, align 8
  %105 = call i32 (...) %104()
  %106 = load i32, i32* %8, align 4
  %107 = xor i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %99, %93
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %111 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %85, %69, %57, %42, %40, %31
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @tcm825x_read_reg(%struct.i2c_client*, i32) #1

declare dso_local i32 @TCM825X_ADDR(i32) #1

declare dso_local %struct.vcontrol* @find_vctrl(i64) #1

declare dso_local i32 @TCM825X_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
