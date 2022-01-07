; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_vidioc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@MXB_AUDIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"illegal argument to MXB_S_AUDIO_CD: i:%d.\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MXB_S_AUDIO_CD: i:%d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"illegal argument to MXB_S_AUDIO_LINE: i:%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"MXB_S_AUDIO_LINE: i:%d.\0A\00", align 1
@ENOIOCTLCMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i8*)* @vidioc_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vidioc_default(%struct.file* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.saa7146_dev*, align 8
  %11 = alloca %struct.mxb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.saa7146_fh*
  %16 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %15, i32 0, i32 0
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %16, align 8
  store %struct.saa7146_dev* %17, %struct.saa7146_dev** %10, align 8
  %18 = load %struct.saa7146_dev*, %struct.saa7146_dev** %10, align 8
  %19 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.mxb*
  store %struct.mxb* %21, %struct.mxb** %11, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %73 [
    i32 129, label %23
    i32 128, label %48
  ]

23:                                               ; preds = %4
  %24 = load i8*, i8** %9, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @MXB_AUDIOS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @DEB_D(i8* %36)
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %5, align 8
  br label %76

40:                                               ; preds = %29
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @DEB_EE(i8* %43)
  %45 = load %struct.mxb*, %struct.mxb** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @tea6420_route_cd(%struct.mxb* %45, i32 %46)
  store i64 0, i64* %5, align 8
  br label %76

48:                                               ; preds = %4
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @MXB_AUDIOS, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54, %48
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @DEB_D(i8* %61)
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %76

65:                                               ; preds = %54
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DEB_EE(i8* %68)
  %70 = load %struct.mxb*, %struct.mxb** %11, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @tea6420_route_line(%struct.mxb* %70, i32 %71)
  store i64 0, i64* %5, align 8
  br label %76

73:                                               ; preds = %4
  %74 = load i64, i64* @ENOIOCTLCMD, align 8
  %75 = sub nsw i64 0, %74
  store i64 %75, i64* %5, align 8
  br label %76

76:                                               ; preds = %73, %65, %58, %40, %33
  %77 = load i64, i64* %5, align 8
  ret i64 %77
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @tea6420_route_cd(%struct.mxb*, i32) #1

declare dso_local i32 @tea6420_route_line(%struct.mxb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
