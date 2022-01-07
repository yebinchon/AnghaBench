; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_querymenu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-empress.c_empress_querymenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32 }
%struct.v4l2_querymenu = type { i32 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@querymenu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_querymenu*)* @empress_querymenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empress_querymenu(%struct.file* %0, i8* %1, %struct.v4l2_querymenu* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_querymenu*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_querymenu* %2, %struct.v4l2_querymenu** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %8, align 8
  %12 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_querymenu, %struct.v4l2_querymenu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @V4L2_CTRL_ID2CLASS(i32 %14)
  %16 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %23 = load i32, i32* @core, align 4
  %24 = load i32, i32* @querymenu, align 4
  %25 = load %struct.v4l2_querymenu*, %struct.v4l2_querymenu** %7, align 8
  %26 = call i32 @saa_call_empress(%struct.saa7134_dev* %22, i32 %23, i32 %24, %struct.v4l2_querymenu* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @V4L2_CTRL_ID2CLASS(i32) #1

declare dso_local i32 @saa_call_empress(%struct.saa7134_dev*, i32, i32, %struct.v4l2_querymenu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
