; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_tuner_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tuner* }
%struct.TYPE_2__ = type { %struct.analog_demod_ops, %struct.dvb_tuner_ops }
%struct.analog_demod_ops = type { i64 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_tuner_ops = type { i32 (i32*, i32*)* }
%struct.tuner = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"digital TV\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"analog TV\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Tuner mode:      %s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" on standby mode\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Frequency:       %lu.%02lu MHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Standard:        0x%08lx\0A\00", align 1
@TUNER_STATUS_LOCKED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Tuner is locked.\0A\00", align 1
@TUNER_STATUS_STEREO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Stereo:          yes\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Signal strength: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @tuner_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tuner_status(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tuner*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dvb_tuner_ops*, align 8
  %7 = alloca %struct.analog_demod_ops*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.tuner*, %struct.tuner** %11, align 8
  store %struct.tuner* %12, %struct.tuner** %3, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.dvb_tuner_ops* %15, %struct.dvb_tuner_ops** %6, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.analog_demod_ops* %18, %struct.analog_demod_ops** %7, align 8
  %19 = load %struct.tuner*, %struct.tuner** %3, align 8
  %20 = getelementptr inbounds %struct.tuner, %struct.tuner* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 129, label %23
    i32 130, label %24
  ]

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %26

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %26

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %1, %24
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %26

26:                                               ; preds = %25, %23, %22
  %27 = load %struct.tuner*, %struct.tuner** %3, align 8
  %28 = getelementptr inbounds %struct.tuner, %struct.tuner* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load %struct.tuner*, %struct.tuner** %3, align 8
  %33 = getelementptr inbounds %struct.tuner, %struct.tuner* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 16000
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  %37 = load %struct.tuner*, %struct.tuner** %3, align 8
  %38 = getelementptr inbounds %struct.tuner, %struct.tuner* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = srem i32 %39, 16000
  %41 = mul nsw i32 %40, 100
  %42 = sdiv i32 %41, 16000
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  br label %57

44:                                               ; preds = %26
  %45 = load %struct.tuner*, %struct.tuner** %3, align 8
  %46 = getelementptr inbounds %struct.tuner, %struct.tuner* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sdiv i32 %47, 16
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %4, align 8
  %50 = load %struct.tuner*, %struct.tuner** %3, align 8
  %51 = getelementptr inbounds %struct.tuner, %struct.tuner* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = srem i32 %52, 16
  %54 = mul nsw i32 %53, 100
  %55 = sdiv i32 %54, 16
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %44, %31
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.tuner*, %struct.tuner** %3, align 8
  %60 = getelementptr inbounds %struct.tuner, %struct.tuner* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %65 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %64)
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %66, i64 %67)
  %69 = load %struct.tuner*, %struct.tuner** %3, align 8
  %70 = getelementptr inbounds %struct.tuner, %struct.tuner* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %71)
  %73 = load %struct.tuner*, %struct.tuner** %3, align 8
  %74 = getelementptr inbounds %struct.tuner, %struct.tuner* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 128
  br i1 %76, label %77, label %78

77:                                               ; preds = %57
  br label %117

78:                                               ; preds = %57
  %79 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %80 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %79, i32 0, i32 0
  %81 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %80, align 8
  %82 = icmp ne i32 (i32*, i32*)* %81, null
  br i1 %82, label %83, label %104

83:                                               ; preds = %78
  %84 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %6, align 8
  %85 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %84, i32 0, i32 0
  %86 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %85, align 8
  %87 = load %struct.tuner*, %struct.tuner** %3, align 8
  %88 = getelementptr inbounds %struct.tuner, %struct.tuner* %87, i32 0, i32 3
  %89 = call i32 %86(i32* %88, i32* %9)
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @TUNER_STATUS_LOCKED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %83
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @TUNER_STATUS_STEREO, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %106 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %105, i32 0, i32 0
  %107 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %106, align 8
  %108 = icmp ne i64 (%struct.dvb_frontend.0*)* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %7, align 8
  %111 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %110, i32 0, i32 0
  %112 = load i64 (%struct.dvb_frontend.0*)*, i64 (%struct.dvb_frontend.0*)** %111, align 8
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %114 = bitcast %struct.dvb_frontend* %113 to %struct.dvb_frontend.0*
  %115 = call i64 %112(%struct.dvb_frontend.0* %114)
  %116 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %77, %109, %104
  ret void
}

declare dso_local i32 @tuner_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
