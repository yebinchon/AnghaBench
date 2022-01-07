; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_set_v4lstd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_set_v4lstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i64, i64, i32 }

@V4L2_STD_525_60 = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"decoder set standard 60 Hz\0A\00", align 1
@saa7115_cfg_60hz_video = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"decoder set standard 50 Hz\0A\00", align 1
@saa7115_cfg_50hz_video = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7113 = common dso_local global i64 0, align 8
@R_0E_CHROMA_CNTL_1 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i64 0, align 8
@V4L2_STD_PAL_Nc = common dso_local global i64 0, align 8
@V4L2_STD_PAL_60 = common dso_local global i64 0, align 8
@V4L2_STD_NTSC_M_JP = common dso_local global i64 0, align 8
@V4L2_STD_SECAM = common dso_local global i64 0, align 8
@R_80_GLOBAL_CNTL_1 = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7114 = common dso_local global i64 0, align 8
@saa7115_cfg_vbi_on = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, i64)* @saa711x_set_v4lstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa711x_set_v4lstd(%struct.v4l2_subdev* %0, i64 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.saa711x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.saa711x_state* %9, %struct.saa711x_state** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %12 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %120

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %19 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @V4L2_STD_525_60, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load i32, i32* @debug, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = call i32 @v4l2_dbg(i32 1, i32 %25, %struct.v4l2_subdev* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load i32, i32* @saa7115_cfg_60hz_video, align 4
  %30 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %28, i32 %29)
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = call i32 @saa711x_set_size(%struct.v4l2_subdev* %31, i32 720, i32 480)
  br label %42

33:                                               ; preds = %16
  %34 = load i32, i32* @debug, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = call i32 @v4l2_dbg(i32 1, i32 %34, %struct.v4l2_subdev* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %38 = load i32, i32* @saa7115_cfg_50hz_video, align 4
  %39 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %37, i32 %38)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %41 = call i32 @saa711x_set_size(%struct.v4l2_subdev* %40, i32 720, i32 576)
  br label %42

42:                                               ; preds = %33, %24
  %43 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %44 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @V4L2_IDENT_SAA7113, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %42
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %50 = load i32, i32* @R_0E_CHROMA_CNTL_1, align 4
  %51 = call i32 @saa711x_read(%struct.v4l2_subdev* %49, i32 %50)
  %52 = and i32 %51, 143
  store i32 %52, i32* %6, align 4
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @V4L2_STD_PAL_M, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = or i32 %57, 48
  store i32 %58, i32* %6, align 4
  br label %92

59:                                               ; preds = %48
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @V4L2_STD_PAL_Nc, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, 32
  store i32 %65, i32* %6, align 4
  br label %91

66:                                               ; preds = %59
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @V4L2_STD_PAL_60, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = or i32 %71, 16
  store i32 %72, i32* %6, align 4
  br label %90

73:                                               ; preds = %66
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @V4L2_STD_NTSC_M_JP, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, 64
  store i32 %79, i32* %6, align 4
  br label %89

80:                                               ; preds = %73
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @V4L2_STD_SECAM, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, 80
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90, %63
  br label %92

92:                                               ; preds = %91, %56
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %94 = load i32, i32* @R_0E_CHROMA_CNTL_1, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @saa711x_write(%struct.v4l2_subdev* %93, i32 %94, i32 %95)
  br label %120

97:                                               ; preds = %42
  %98 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %99 = load i32, i32* @R_80_GLOBAL_CNTL_1, align 4
  %100 = call i32 @saa711x_read(%struct.v4l2_subdev* %98, i32 %99)
  %101 = and i32 %100, 16
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %106 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @V4L2_IDENT_SAA7114, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %112 = load i32, i32* @saa7115_cfg_vbi_on, align 4
  %113 = call i32 @saa711x_writeregs(%struct.v4l2_subdev* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %104, %97
  %115 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %116 = load %struct.saa711x_state*, %struct.saa711x_state** %5, align 8
  %117 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @saa711x_s_clock_freq(%struct.v4l2_subdev* %115, i32 %118)
  br label %120

120:                                              ; preds = %15, %114, %92
  ret void
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @saa711x_writeregs(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_set_size(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa711x_s_clock_freq(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
