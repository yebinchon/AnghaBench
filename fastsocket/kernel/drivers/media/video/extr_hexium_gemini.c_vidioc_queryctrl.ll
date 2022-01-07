; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_vidioc_queryctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_hexium_gemini.c_vidioc_queryctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i64 }
%struct.file = type { i32 }
%struct.saa7146_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@HEXIUM_CONTROLS = common dso_local global i32 0, align 4
@hexium_controls = common dso_local global %struct.v4l2_queryctrl* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_QUERYCTRL %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)* @vidioc_queryctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_queryctrl(%struct.file* %0, i8* %1, %struct.v4l2_queryctrl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_queryctrl* %2, %struct.v4l2_queryctrl** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load i32, i32* @HEXIUM_CONTROLS, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %44, %3
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @hexium_controls, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %20, i64 %22
  %24 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %19
  %31 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** @hexium_controls, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %32, i64 %34
  %36 = bitcast %struct.v4l2_queryctrl* %31 to i8*
  %37 = bitcast %struct.v4l2_queryctrl* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @DEB_D(i8* %41)
  store i32 0, i32* %4, align 4
  br label %59

43:                                               ; preds = %19
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %49 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)*, i32 (%struct.file*, i8*, %struct.v4l2_queryctrl*)** %53, align 8
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %58 = call i32 %54(%struct.file* %55, i8* %56, %struct.v4l2_queryctrl* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %47, %30
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DEB_D(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
