; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_ENUMINPUT %d.\0A\00", align 1
@MXB_INPUTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@mxb_inputs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %8 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DEB_EE(i8* %11)
  %13 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MXB_INPUTS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %23 = load i32*, i32** @mxb_inputs, align 8
  %24 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = call i32 @memcpy(%struct.v4l2_input* %22, i32* %27, i32 8)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @memcpy(%struct.v4l2_input*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
