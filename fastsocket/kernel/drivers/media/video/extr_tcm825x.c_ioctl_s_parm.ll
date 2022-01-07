; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_ioctl_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.v4l2_fract }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEFAULT_FPS = common dso_local global i32 0, align 4
@MAX_FPS = common dso_local global i8* null, align 8
@MIN_FPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*, %struct.v4l2_streamparm*)* @ioctl_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_s_parm(%struct.v4l2_int_device* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_int_device*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.tcm825x_sensor*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %10 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %10, i32 0, i32 0
  %12 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %11, align 8
  store %struct.tcm825x_sensor* %12, %struct.tcm825x_sensor** %6, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.v4l2_fract* %16, %struct.v4l2_fract** %7, align 8
  %17 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @DEFAULT_FPS, align 4
  %37 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** @MAX_FPS, align 8
  %53 = icmp ugt i8* %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %41
  %55 = load i8*, i8** @MAX_FPS, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %73

61:                                               ; preds = %41
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** @MIN_FPS, align 8
  %64 = icmp ult i8* %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** @MIN_FPS, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %61
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %6, align 8
  %75 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %74, i32 0, i32 0
  %76 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %77 = bitcast %struct.v4l2_fract* %75 to i8*
  %78 = bitcast %struct.v4l2_fract* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 8, i1 false)
  %79 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %4, align 8
  %80 = call i32 @tcm825x_configure(%struct.v4l2_int_device* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tcm825x_configure(%struct.v4l2_int_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
