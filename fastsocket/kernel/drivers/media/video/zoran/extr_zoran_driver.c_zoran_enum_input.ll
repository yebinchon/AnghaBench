; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.zoran_fh = type { %struct.zoran* }
%struct.zoran = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_STD_ALL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_input_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @zoran_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zoran_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.zoran_fh*, align 8
  %9 = alloca %struct.zoran*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.zoran_fh*
  store %struct.zoran_fh* %12, %struct.zoran_fh** %8, align 8
  %13 = load %struct.zoran_fh*, %struct.zoran_fh** %8, align 8
  %14 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %13, i32 0, i32 0
  %15 = load %struct.zoran*, %struct.zoran** %14, align 8
  store %struct.zoran* %15, %struct.zoran** %9, align 8
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.zoran*, %struct.zoran** %9, align 8
  %25 = getelementptr inbounds %struct.zoran, %struct.zoran* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %75

32:                                               ; preds = %20
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  %36 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %37 = call i32 @memset(%struct.v4l2_input* %36, i32 0, i32 20)
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %32
  %42 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.zoran*, %struct.zoran** %9, align 8
  %46 = getelementptr inbounds %struct.zoran, %struct.zoran* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strncpy(i32 %44, i32 %55, i32 3)
  %57 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @V4L2_STD_ALL, align 4
  %61 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.zoran*, %struct.zoran** %9, align 8
  %64 = getelementptr inbounds %struct.zoran, %struct.zoran* %63, i32 0, i32 0
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.zoran*, %struct.zoran** %9, align 8
  %67 = load i32, i32* @video, align 4
  %68 = load i32, i32* @g_input_status, align 4
  %69 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %69, i32 0, i32 1
  %71 = call i32 @decoder_call(%struct.zoran* %66, i32 %67, i32 %68, i32* %70)
  %72 = load %struct.zoran*, %struct.zoran** %9, align 8
  %73 = getelementptr inbounds %struct.zoran, %struct.zoran* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %41, %29
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.v4l2_input*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @decoder_call(%struct.zoran*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
