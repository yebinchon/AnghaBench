; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_pix_format.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_pix_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32, i32* }
%struct.v4l2_pix_format = type { i64 }

@V4L2_PIX_FMT_SN9C10X = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_pix_format*)* @sn9c102_set_pix_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_set_pix_format(%struct.sn9c102_device* %0, %struct.v4l2_pix_format* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_pix_format*, align 8
  %5 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_pix_format* %1, %struct.v4l2_pix_format** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %7 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @V4L2_PIX_FMT_SN9C10X, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11, %2
  %18 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %19 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %43 [
    i32 132, label %21
    i32 131, label %21
    i32 130, label %21
    i32 129, label %32
    i32 128, label %32
  ]

21:                                               ; preds = %17, %17, %17
  %22 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %23 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %24 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 24
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, 128
  %29 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %22, i32 %28, i32 24)
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %43

32:                                               ; preds = %17, %17
  %33 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %34 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %35 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 24
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 127
  %40 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %33, i32 %39, i32 24)
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %17, %32, %21
  br label %71

44:                                               ; preds = %11
  %45 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %46 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %70 [
    i32 132, label %48
    i32 131, label %48
    i32 130, label %48
    i32 129, label %59
    i32 128, label %59
  ]

48:                                               ; preds = %44, %44, %44
  %49 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %50 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %51 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 24
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  %56 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %49, i32 %55, i32 24)
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %44, %44
  %60 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %61 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %62 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 24
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 128
  %67 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %60, i32 %66, i32 24)
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %44, %59, %48
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  br label %78

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  ret i32 %79
}

declare dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
