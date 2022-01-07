; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_log_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i8* }
%struct.msp_state = type { i64, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@V4L2_SUBDEV_NAME_SIZE = common dso_local global i32 0, align 4
@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s rev1 = 0x%04x rev2 = 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: Audio:    \00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"AM (for carrier detect)\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"FM Radio\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Terrestial FM-mono/stereo\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Satellite FM-mono\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"NICAM/FM (B/G, D/K)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"NICAM/FM (I)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"NICAM/AM (L)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"BTSC\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"External input\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Mode:     %s\0A\00", align 1
@OPMODE_MANUAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Mode:     %s (%s%s)\0A\00", align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c", dual\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@OPMODE_AUTODETECT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"Standard: %s (%s%s)\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Audmode:  0x%04x\0A\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"Routing:  0x%08x (input) 0x%08x (output)\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"ACB:      0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @msp_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = call %struct.msp_state* @to_state(%struct.v4l2_subdev* %8)
  store %struct.msp_state* %9, %struct.msp_state** %3, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %4, align 8
  %12 = load i32, i32* @V4L2_SUBDEV_NAME_SIZE, align 4
  %13 = add nsw i32 %12, 20
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = call i32 @msp_detect_stereo(%struct.i2c_client* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %33 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %32, i32 0, i32 10
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %36 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %34, i32 %37)
  %39 = trunc i64 %14 to i32
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %41 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @snprintf(i8* %16, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %45 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %44, i32 0, i32 8
  %46 = call i32 @v4l2_ctrl_handler_log_status(i32* %45, i8* %16)
  %47 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %48 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %59 [
    i32 136, label %50
    i32 130, label %51
    i32 128, label %52
    i32 129, label %53
    i32 132, label %54
    i32 131, label %55
    i32 135, label %56
    i32 134, label %57
    i32 133, label %58
  ]

50:                                               ; preds = %25
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %60

51:                                               ; preds = %25
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %60

52:                                               ; preds = %25
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %60

53:                                               ; preds = %25
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %60

54:                                               ; preds = %25
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %60

55:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %5, align 8
  br label %60

56:                                               ; preds = %25
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %5, align 8
  br label %60

57:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %5, align 8
  br label %60

58:                                               ; preds = %25
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %5, align 8
  br label %60

59:                                               ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %60

60:                                               ; preds = %59, %58, %57, %56, %55, %54, %53, %52, %51, %50
  %61 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %62 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 133
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %67)
  br label %131

69:                                               ; preds = %60
  %70 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %71 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OPMODE_MANUAL, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %86 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %87 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %94 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %77, i8* %85, i8* %93)
  br label %130

95:                                               ; preds = %69
  %96 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %97 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OPMODE_AUTODETECT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %101, %95
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %108 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @msp_standard_std_name(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %114 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)
  %121 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %122 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %129 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8* %112, i8* %120, i8* %128)
  br label %130

130:                                              ; preds = %105, %75
  br label %131

131:                                              ; preds = %130, %65
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %134 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* %135)
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %139 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = inttoptr i64 %141 to i8*
  %143 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %144 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %137, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0), i8* %142, i32 %145)
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %149 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %148, i32 0, i32 4
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (%struct.i2c_client*, i8*, i8*, ...) @v4l_info(%struct.i2c_client* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %150)
  %152 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %152)
  ret i32 0
}

declare dso_local %struct.msp_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msp_detect_stereo(%struct.i2c_client*) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i8*) #1

declare dso_local i32 @msp_standard_std_name(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
