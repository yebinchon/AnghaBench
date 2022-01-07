; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_detect_stereo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_detect_stereo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i32, i32 }

@msp_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"stereo detect register: %d\0A\00", align 1
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"nicam sync=%d, mode=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"watch: rxsubchans %02x => %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"watch: nicam %d => %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @msp3400c_detect_stereo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp3400c_detect_stereo(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.msp_state* @to_state(i32 %9)
  store %struct.msp_state* %10, %struct.msp_state** %3, align 8
  %11 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %12 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %15 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %18 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %80 [
    i32 128, label %20
    i32 130, label %48
    i32 129, label %48
    i32 131, label %48
  ]

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = call i32 @msp_read_dsp(%struct.i2c_client* %21, i32 24)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 32767
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 65536
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @msp_debug, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 2, i32 %29, %struct.i2c_client* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 8192
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %36, i32* %5, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, -4096
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %42 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %35
  store i32 0, i32* %6, align 4
  br label %80

48:                                               ; preds = %1, %1, %1
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = call i32 @msp_read_dem(%struct.i2c_client* %49, i32 35)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @msp_debug, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 1
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 30
  %57 = ashr i32 %56, 1
  %58 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 2, i32 %51, %struct.i2c_client* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %48
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 30
  %65 = ashr i32 %64, 1
  switch i32 %65, label %74 [
    i32 0, label %66
    i32 8, label %66
    i32 1, label %68
    i32 9, label %68
    i32 2, label %70
    i32 10, label %70
  ]

66:                                               ; preds = %62, %62
  %67 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %67, i32* %5, align 4
  br label %76

68:                                               ; preds = %62, %62
  %69 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %69, i32* %5, align 4
  br label %76

70:                                               ; preds = %62, %62
  %71 = load i32, i32* @V4L2_TUNER_SUB_LANG1, align 4
  %72 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %70, %68, %66
  store i32 1, i32* %6, align 4
  br label %79

77:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  %78 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %76
  br label %80

80:                                               ; preds = %1, %79, %47
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %83 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  %87 = load i32, i32* @msp_debug, align 4
  %88 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %89 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %90 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %87, %struct.i2c_client* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %96 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %80
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %100 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %98, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  store i32 1, i32* %7, align 4
  %104 = load i32, i32* @msp_debug, align 4
  %105 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %106 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %107 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i32, %struct.i2c_client*, i8*, i32, ...) @v4l_dbg(i32 1, i32 %104, %struct.i2c_client* %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %113 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %97
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @msp_read_dsp(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, ...) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
