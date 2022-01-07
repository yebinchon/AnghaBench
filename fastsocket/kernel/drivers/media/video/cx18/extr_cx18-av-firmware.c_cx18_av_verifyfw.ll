; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-firmware.c_cx18_av_verifyfw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-firmware.c_cx18_av_verifyfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.firmware = type { i32, i64* }

@CXADEC_DL_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"verification of %s firmware load failed: expected %#010x got %#010x\0A\00", align 1
@FWFILE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"verified load of %s firmware (%d bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.firmware*)* @cx18_av_verifyfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_verifyfw(%struct.cx18* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %12 = load %struct.cx18*, %struct.cx18** %3, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.cx18*, %struct.cx18** %3, align 8
  %16 = load i32, i32* @CXADEC_DL_CTL, align 4
  %17 = call i32 @cx18_av_read4(%struct.cx18* %15, i32 %16)
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %30, %2
  %19 = load i32, i32* %11, align 4
  %20 = and i32 %19, 16777215
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = or i32 %21, 251658240
  store i32 %22, i32* %11, align 4
  %23 = load %struct.cx18*, %struct.cx18** %3, align 8
  %24 = load i32, i32* @CXADEC_DL_CTL, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @cx18_av_write4_noretry(%struct.cx18* %23, i32 %24, i32 %25)
  %27 = load %struct.cx18*, %struct.cx18** %3, align 8
  %28 = load i32, i32* @CXADEC_DL_CTL, align 4
  %29 = call i32 @cx18_av_read4(%struct.cx18* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, -16777216
  %33 = icmp ne i32 %32, 251658240
  br i1 %33, label %18, label %34

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %11, align 4
  %37 = and i32 %36, 16383
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.cx18*, %struct.cx18** %3, align 8
  %41 = load i32, i32* @CXADEC_DL_CTL, align 4
  %42 = call i32 @cx18_av_read4(%struct.cx18* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %35

43:                                               ; preds = %35
  %44 = load %struct.firmware*, %struct.firmware** %4, align 8
  %45 = getelementptr inbounds %struct.firmware, %struct.firmware* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %7, align 8
  %47 = load %struct.firmware*, %struct.firmware** %4, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %82, %43
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, -49153
  store i32 %56, i32* %11, align 4
  %57 = load i64*, i64** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 %62, 16
  %64 = or i32 251658240, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %72 = load i32, i32* @FWFILE, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @CX18_ERR_DEV(%struct.v4l2_subdev* %71, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %85

78:                                               ; preds = %54
  %79 = load %struct.cx18*, %struct.cx18** %3, align 8
  %80 = load i32, i32* @CXADEC_DL_CTL, align 4
  %81 = call i32 @cx18_av_read4(%struct.cx18* %79, i32 %80)
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %50

85:                                               ; preds = %70, %50
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %90 = load i32, i32* @FWFILE, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @CX18_INFO_DEV(%struct.v4l2_subdev* %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write4_noretry(%struct.cx18*, i32, i32) #1

declare dso_local i32 @CX18_ERR_DEV(%struct.v4l2_subdev*, i8*, i32, i32, i32) #1

declare dso_local i32 @CX18_INFO_DEV(%struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
