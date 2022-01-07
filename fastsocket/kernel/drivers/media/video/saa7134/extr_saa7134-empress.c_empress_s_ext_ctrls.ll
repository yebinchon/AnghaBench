; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.v4l2_ext_controls = type { i64, i64 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_ext_ctrls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @empress_s_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empress_s_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %11, align 8
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %8, align 8
  %13 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %36

27:                                               ; preds = %18
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %29 = load i32, i32* @core, align 4
  %30 = load i32, i32* @s_ext_ctrls, align 4
  %31 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %32 = call i32 @saa_call_empress(%struct.saa7134_dev* %28, i32 %29, i32 %30, %struct.v4l2_ext_controls* %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %34 = call i32 @ts_init_encoder(%struct.saa7134_dev* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %27, %24, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @saa_call_empress(%struct.saa7134_dev*, i32, i32, %struct.v4l2_ext_controls*) #1

declare dso_local i32 @ts_init_encoder(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
