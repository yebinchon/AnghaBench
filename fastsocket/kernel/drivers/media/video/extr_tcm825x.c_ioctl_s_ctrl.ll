; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_2__*, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32 (...)* }
%struct.i2c_client = type { i32 }
%struct.v4l2_control = type { i32, i64 }
%struct.vcontrol = type { i32, i32 }

@V4L2_CID_EXPOSURE = common dso_local global i64 0, align 8
@TCM825X_ESRSPD_L = common dso_local global i32 0, align 4
@TCM825X_ESRSPD_U = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i64 0, align 8
@V4L2_CID_VFLIP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_control*)* @ioctl_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_s_ctrl(%struct.v4l2_int_device* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.vcontrol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %12 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %12, i32 0, i32 0
  %14 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %13, align 8
  store %struct.tcm825x_sensor* %14, %struct.tcm825x_sensor** %6, align 8
  %15 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %16 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %15, i32 0, i32 1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %7, align 8
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CID_EXPOSURE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TCM825X_ESRSPD_L, align 4
  %29 = call i32 @TCM825X_MASK(i32 %28)
  %30 = and i32 %27, %29
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = load i32, i32* @TCM825X_ESRSPD_U, align 4
  %34 = call i32 @TCM825X_MASK(i32 %33)
  %35 = and i32 %32, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %37 = load i32, i32* @TCM825X_ESRSPD_U, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @tcm825x_write_reg_mask(%struct.i2c_client* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %26
  %45 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %46 = load i32, i32* @TCM825X_ESRSPD_L, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i64 @tcm825x_write_reg_mask(%struct.i2c_client* %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %102

53:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %102

54:                                               ; preds = %2
  %55 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.vcontrol* @find_vctrl(i64 %57)
  store %struct.vcontrol* %58, %struct.vcontrol** %8, align 8
  %59 = load %struct.vcontrol*, %struct.vcontrol** %8, align 8
  %60 = icmp eq %struct.vcontrol* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %102

64:                                               ; preds = %54
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_CID_HFLIP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %72 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_CID_VFLIP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70, %64
  %77 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %78 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (...)*, i32 (...)** %80, align 8
  %82 = call i32 (...) %81()
  %83 = load i32, i32* %9, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %76, %70
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.vcontrol*, %struct.vcontrol** %8, align 8
  %88 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %86, %89
  store i32 %90, i32* %9, align 4
  %91 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %92 = load %struct.vcontrol*, %struct.vcontrol** %8, align 8
  %93 = getelementptr inbounds %struct.vcontrol, %struct.vcontrol* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @tcm825x_write_reg_mask(%struct.i2c_client* %91, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %85
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %98, %61, %53, %50, %41
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @TCM825X_MASK(i32) #1

declare dso_local i64 @tcm825x_write_reg_mask(%struct.i2c_client*, i32, i32) #1

declare dso_local %struct.vcontrol* @find_vctrl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
