; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l_fill_dv_preset_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l_fill_dv_preset_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_preset_info = type { i32, i32, i8* }
%struct.v4l2_dv_enum_preset = type { i64, i32, i32, i32 }
%struct.v4l2_dv_preset_info.0 = type { i32, i32, i8* }

@v4l_fill_dv_preset_info.dv_presets = internal constant [19 x %struct.v4l2_dv_preset_info] [%struct.v4l2_dv_preset_info { i32 0, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 720, i32 480, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 720, i32 576, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1280, i32 720, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0) }, %struct.v4l2_dv_preset_info { i32 1920, i32 1080, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"480p@59.94\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"576p@50\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"720p@24\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"720p@25\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"720p@30\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"720p@50\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"720p@59.94\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"720p@60\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"1080i@29.97\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"1080i@30\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"1080i@25\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"1080i@50\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"1080i@60\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"1080p@24\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"1080p@25\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"1080p@30\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"1080p@50\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"1080p@60\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l_fill_dv_preset_info(i64 %0, %struct.v4l2_dv_enum_preset* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.v4l2_dv_enum_preset*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.v4l2_dv_enum_preset* %1, %struct.v4l2_dv_enum_preset** %5, align 8
  %6 = load %struct.v4l2_dv_enum_preset*, %struct.v4l2_dv_enum_preset** %5, align 8
  %7 = icmp eq %struct.v4l2_dv_enum_preset* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @ARRAY_SIZE(%struct.v4l2_dv_preset_info.0* bitcast ([19 x %struct.v4l2_dv_preset_info]* @v4l_fill_dv_preset_info.dv_presets to %struct.v4l2_dv_preset_info.0*))
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.v4l2_dv_enum_preset*, %struct.v4l2_dv_enum_preset** %5, align 8
  %18 = getelementptr inbounds %struct.v4l2_dv_enum_preset, %struct.v4l2_dv_enum_preset* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds [19 x %struct.v4l2_dv_preset_info], [19 x %struct.v4l2_dv_preset_info]* @v4l_fill_dv_preset_info.dv_presets, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.v4l2_dv_preset_info, %struct.v4l2_dv_preset_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = load %struct.v4l2_dv_enum_preset*, %struct.v4l2_dv_enum_preset** %5, align 8
  %24 = getelementptr inbounds %struct.v4l2_dv_enum_preset, %struct.v4l2_dv_enum_preset* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds [19 x %struct.v4l2_dv_preset_info], [19 x %struct.v4l2_dv_preset_info]* @v4l_fill_dv_preset_info.dv_presets, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.v4l2_dv_preset_info, %struct.v4l2_dv_preset_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.v4l2_dv_enum_preset*, %struct.v4l2_dv_enum_preset** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_dv_enum_preset, %struct.v4l2_dv_enum_preset* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_dv_enum_preset*, %struct.v4l2_dv_enum_preset** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_dv_enum_preset, %struct.v4l2_dv_enum_preset* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds [19 x %struct.v4l2_dv_preset_info], [19 x %struct.v4l2_dv_preset_info]* @v4l_fill_dv_preset_info.dv_presets, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.v4l2_dv_preset_info, %struct.v4l2_dv_preset_info* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strlcpy(i32 %33, i8* %37, i32 4)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %15, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @ARRAY_SIZE(%struct.v4l2_dv_preset_info.0*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
