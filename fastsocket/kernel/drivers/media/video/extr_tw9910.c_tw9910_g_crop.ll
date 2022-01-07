; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_g_crop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_g_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_crop = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tw9910_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@__const.tw9910_g_crop.crop = private unnamed_addr constant %struct.v4l2_crop { i32 0, %struct.TYPE_3__ { i32 480, i32 640, i64 0, i64 0 } }, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_crop*)* @tw9910_g_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_g_crop(%struct.v4l2_subdev* %0, %struct.v4l2_crop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_crop*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tw9910_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_crop, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_crop* %1, %struct.v4l2_crop** %5, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %12)
  store %struct.tw9910_priv* %13, %struct.tw9910_priv** %7, align 8
  %14 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %15 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = bitcast %struct.v4l2_crop* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.v4l2_crop* @__const.tw9910_g_crop.crop to i8*), i64 32, i1 false)
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %21 = call i32 @tw9910_s_crop(%struct.v4l2_subdev* %20, %struct.v4l2_crop* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %53

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %35 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.tw9910_priv*, %struct.tw9910_priv** %7, align 8
  %43 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %51 = load %struct.v4l2_crop*, %struct.v4l2_crop** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %27, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tw9910_s_crop(%struct.v4l2_subdev*, %struct.v4l2_crop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
