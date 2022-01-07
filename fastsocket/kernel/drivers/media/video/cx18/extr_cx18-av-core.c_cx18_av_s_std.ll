; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-av-core.c_cx18_av_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx18_av_state = type { i64, i32 }
%struct.cx18 = type { i32 }

@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"changing video std to fmt %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @cx18_av_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_av_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18_av_state*, align 8
  %7 = alloca %struct.cx18*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %10)
  store %struct.cx18_av_state* %11, %struct.cx18_av_state** %6, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.cx18* %13, %struct.cx18** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %15 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %20 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %130

25:                                               ; preds = %18, %2
  %26 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %27 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %30 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %32 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 2, i32* %8, align 4
  br label %104

37:                                               ; preds = %25
  %38 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %39 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 3, i32* %8, align 4
  br label %103

44:                                               ; preds = %37
  %45 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %46 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  store i32 5, i32* %8, align 4
  br label %102

51:                                               ; preds = %44
  %52 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %53 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 6, i32* %8, align 4
  br label %101

58:                                               ; preds = %51
  %59 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %60 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 7, i32* %8, align 4
  br label %100

65:                                               ; preds = %58
  %66 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %67 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @V4L2_STD_PAL_60, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 8, i32* %8, align 4
  br label %99

72:                                               ; preds = %65
  %73 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %74 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @V4L2_STD_NTSC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %82 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @V4L2_STD_PAL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 4, i32* %8, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load %struct.cx18_av_state*, %struct.cx18_av_state** %6, align 8
  %90 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @V4L2_STD_SECAM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 12, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %88
  br label %97

97:                                               ; preds = %96, %87
  br label %98

98:                                               ; preds = %97, %79
  br label %99

99:                                               ; preds = %98, %71
  br label %100

100:                                              ; preds = %99, %64
  br label %101

101:                                              ; preds = %100, %57
  br label %102

102:                                              ; preds = %101, %50
  br label %103

103:                                              ; preds = %102, %43
  br label %104

104:                                              ; preds = %103, %36
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp sge i32 %108, 4
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 8
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.cx18*, %struct.cx18** %7, align 8
  %115 = call i32 @cx18_av_and_or(%struct.cx18* %114, i32 1024, i32 -16, i32 1)
  %116 = load %struct.cx18*, %struct.cx18** %7, align 8
  %117 = call i32 @cx18_av_and_or(%struct.cx18* %116, i32 1147, i32 -7, i32 0)
  br label %118

118:                                              ; preds = %113, %110, %104
  %119 = load %struct.cx18*, %struct.cx18** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, 32
  %122 = call i32 @cx18_av_and_or(%struct.cx18* %119, i32 1024, i32 -48, i32 %121)
  %123 = load %struct.cx18*, %struct.cx18** %7, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @cx18_av_and_or(%struct.cx18* %123, i32 1027, i32 -4, i32 %124)
  %126 = load %struct.cx18*, %struct.cx18** %7, align 8
  %127 = call i32 @cx18_av_std_setup(%struct.cx18* %126)
  %128 = load %struct.cx18*, %struct.cx18** %7, align 8
  %129 = call i32 @input_change(%struct.cx18* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %118, %24
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @CX18_DEBUG_INFO_DEV(%struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @cx18_av_and_or(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_av_std_setup(%struct.cx18*) #1

declare dso_local i32 @input_change(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
