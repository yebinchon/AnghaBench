; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_vidioc_g_fmt_sliced_vbi_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_vidioc_g_fmt_sliced_vbi_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8***, i8* }
%struct.saa7146_dev = type { i64 }
%struct.av7110 = type { i64, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [15 x i8] c"VIDIOC_G_FMT:\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_g_fmt_sliced_vbi_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fmt_sliced_vbi_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.av7110*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.av7110*
  store %struct.av7110* %17, %struct.av7110** %9, align 8
  %18 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.av7110*, %struct.av7110** %9, align 8
  %20 = getelementptr inbounds %struct.av7110, %struct.av7110* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @FW_VERSION(i32 %21)
  %23 = icmp slt i32 %22, 9763
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @memset(%struct.TYPE_4__* %30, i32 0, i32 24)
  %32 = load %struct.av7110*, %struct.av7110** %9, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %27
  %37 = load i8*, i8** @V4L2_SLICED_WSS_625, align 8
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** @V4L2_SLICED_WSS_625, align 8
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8***, i8**** %46, align 8
  %48 = getelementptr inbounds i8**, i8*** %47, i64 0
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 23
  store i8* %42, i8** %50, align 8
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  br label %55

55:                                               ; preds = %36, %27
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @FW_VERSION(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
