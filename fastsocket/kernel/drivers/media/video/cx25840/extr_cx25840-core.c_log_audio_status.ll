; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_log_audio_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_log_audio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tri\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"mono with SAP\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"stereo with SAP\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"dual with SAP\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"tri with SAP\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"forced mode\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"not defined\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Detected audio mode:       %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"EIAJ\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"A2-M\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"A2-BG\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"A2-DK1\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"A2-DK2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"A2-DK3\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"A1 (6.0 MHz FM Mono)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"AM-L\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"NICAM-BG\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"NICAM-DK\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"NICAM-I\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"NICAM-L\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"BTSC/EIAJ/A2-M Mono (4.5 MHz FMMono)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"IF FM Radio\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"BTSC\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"high-deviation FM\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"very high-deviation FM\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"unknown audio standard\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"forced audio standard\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"no detected audio standard\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"Detected audio standard:   %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Audio microcontroller:     %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"detecting\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"FM radio\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"automatic detection\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"Configured audio standard: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"MONO1 (LANGUAGE A/Mono L+R channel for BTSC, EIAJ, A2)\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"MONO2 (LANGUAGE B)\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"MONO3 (STEREO forced MONO)\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"MONO4 (NICAM ANALOG-Language C/Analog Fallback)\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"STEREO\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"DUAL1 (AB)\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"DUAL2 (AC) (FM)\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"DUAL3 (BC) (FM)\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"DUAL4 (AC) (AM)\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"DUAL5 (BC) (AM)\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"SAP\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"Configured audio mode:     %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"BG\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"DK1\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"DK2\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"DK3\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"FM Radio\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"automatic standard and mode detection\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"Configured audio system:   %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"Specified audio input:     Tuner (In%d)\0A\00", align 1
@.str.62 = private unnamed_addr constant [37 x i8] c"Specified audio input:     External\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"mono/language A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"language B\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"language C\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"analog fallback\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"language AC\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"language BC\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"language AB\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Preferred audio mode:      %s\0A\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"system DK\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"system L\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"autodetect\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"Selected 65 MHz format:    %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"chroma\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"Selected 45 MHz format:    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @log_audio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_audio_status(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.cx25840_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %14 = call i32 @i2c_get_clientdata(%struct.i2c_client* %13)
  %15 = call %struct.cx25840_state* @to_state(i32 %14)
  store %struct.cx25840_state* %15, %struct.cx25840_state** %3, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = call i32 @cx25840_read(%struct.i2c_client* %16, i32 2051)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %19 = call i32 @cx25840_read(%struct.i2c_client* %18, i32 2052)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = call i32 @cx25840_read(%struct.i2c_client* %20, i32 2053)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %23 = call i32 @cx25840_read(%struct.i2c_client* %22, i32 2056)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %25 = call i32 @cx25840_read(%struct.i2c_client* %24, i32 2057)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %27 = call i32 @cx25840_read(%struct.i2c_client* %26, i32 2059)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %29 = call i32 @cx25840_read(%struct.i2c_client* %28, i32 2259)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.cx25840_state*, %struct.cx25840_state** %3, align 8
  %31 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  switch i32 %33, label %43 [
    i32 0, label %34
    i32 1, label %35
    i32 2, label %36
    i32 4, label %37
    i32 16, label %38
    i32 17, label %39
    i32 18, label %40
    i32 20, label %41
    i32 254, label %42
  ]

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %44

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %44

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %44

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %44

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %44

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %44

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %44

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  br label %44

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %12, align 8
  br label %44

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %44

44:                                               ; preds = %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  %45 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %70 [
    i32 0, label %49
    i32 1, label %50
    i32 2, label %51
    i32 3, label %52
    i32 4, label %53
    i32 5, label %54
    i32 6, label %55
    i32 7, label %56
    i32 8, label %57
    i32 9, label %58
    i32 10, label %59
    i32 11, label %60
    i32 12, label %61
    i32 13, label %62
    i32 14, label %63
    i32 15, label %64
    i32 16, label %65
    i32 17, label %66
    i32 253, label %67
    i32 254, label %68
    i32 255, label %69
  ]

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %71

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %71

51:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %71

52:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %71

53:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %71

54:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %71

55:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %71

56:                                               ; preds = %44
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8** %12, align 8
  br label %71

57:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %71

58:                                               ; preds = %44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %12, align 8
  br label %71

59:                                               ; preds = %44
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %12, align 8
  br label %71

60:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %12, align 8
  br label %71

61:                                               ; preds = %44
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %71

62:                                               ; preds = %44
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8** %12, align 8
  br label %71

63:                                               ; preds = %44
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8** %12, align 8
  br label %71

64:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %71

65:                                               ; preds = %44
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i8** %12, align 8
  br label %71

66:                                               ; preds = %44
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i8** %12, align 8
  br label %71

67:                                               ; preds = %44
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i64 0, i64 0), i8** %12, align 8
  br label %71

68:                                               ; preds = %44
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8** %12, align 8
  br label %71

69:                                               ; preds = %44
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i64 0, i64 0), i8** %12, align 8
  br label %71

70:                                               ; preds = %44
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %12, align 8
  br label %71

71:                                               ; preds = %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49
  %72 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), i8* %73)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 16
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0)
  br label %86

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i8* [ %84, %79 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), %85 ]
  %88 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0), i8* %87)
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 4
  switch i32 %90, label %107 [
    i32 0, label %91
    i32 1, label %92
    i32 2, label %93
    i32 3, label %94
    i32 4, label %95
    i32 5, label %96
    i32 6, label %97
    i32 7, label %98
    i32 8, label %99
    i32 9, label %100
    i32 10, label %101
    i32 11, label %102
    i32 12, label %103
    i32 13, label %104
    i32 14, label %105
    i32 15, label %106
  ]

91:                                               ; preds = %86
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %108

92:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %108

93:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %108

94:                                               ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %108

95:                                               ; preds = %86
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %12, align 8
  br label %108

96:                                               ; preds = %86
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %12, align 8
  br label %108

97:                                               ; preds = %86
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %12, align 8
  br label %108

98:                                               ; preds = %86
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %12, align 8
  br label %108

99:                                               ; preds = %86
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8** %12, align 8
  br label %108

100:                                              ; preds = %86
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %108

101:                                              ; preds = %86
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8** %12, align 8
  br label %108

102:                                              ; preds = %86
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %12, align 8
  br label %108

103:                                              ; preds = %86
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i8** %12, align 8
  br label %108

104:                                              ; preds = %86
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i64 0, i64 0), i8** %12, align 8
  br label %108

105:                                              ; preds = %86
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i64 0, i64 0), i8** %12, align 8
  br label %108

106:                                              ; preds = %86
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i8** %12, align 8
  br label %108

107:                                              ; preds = %86
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %108

108:                                              ; preds = %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96, %95, %94, %93, %92, %91
  %109 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %109, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* %7, align 4
  %113 = ashr i32 %112, 4
  %114 = icmp slt i32 %113, 15
  br i1 %114, label %115, label %134

115:                                              ; preds = %108
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, 15
  switch i32 %117, label %129 [
    i32 0, label %118
    i32 1, label %119
    i32 2, label %120
    i32 3, label %121
    i32 4, label %122
    i32 5, label %123
    i32 6, label %124
    i32 7, label %125
    i32 8, label %126
    i32 9, label %127
    i32 10, label %128
  ]

118:                                              ; preds = %115
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.40, i64 0, i64 0), i8** %12, align 8
  br label %130

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8** %12, align 8
  br label %130

120:                                              ; preds = %115
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8** %12, align 8
  br label %130

121:                                              ; preds = %115
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i64 0, i64 0), i8** %12, align 8
  br label %130

122:                                              ; preds = %115
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i8** %12, align 8
  br label %130

123:                                              ; preds = %115
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0), i8** %12, align 8
  br label %130

124:                                              ; preds = %115
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i8** %12, align 8
  br label %130

125:                                              ; preds = %115
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.47, i64 0, i64 0), i8** %12, align 8
  br label %130

126:                                              ; preds = %115
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i8** %12, align 8
  br label %130

127:                                              ; preds = %115
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i64 0, i64 0), i8** %12, align 8
  br label %130

128:                                              ; preds = %115
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i64 0, i64 0), i8** %12, align 8
  br label %130

129:                                              ; preds = %115
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %130

130:                                              ; preds = %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118
  %131 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i8* %132)
  br label %153

134:                                              ; preds = %108
  %135 = load i32, i32* %7, align 4
  %136 = and i32 %135, 15
  switch i32 %136, label %148 [
    i32 0, label %137
    i32 1, label %138
    i32 2, label %139
    i32 3, label %140
    i32 4, label %141
    i32 5, label %142
    i32 6, label %143
    i32 7, label %144
    i32 8, label %145
    i32 9, label %146
    i32 15, label %147
  ]

137:                                              ; preds = %134
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0), i8** %12, align 8
  br label %149

138:                                              ; preds = %134
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8** %12, align 8
  br label %149

139:                                              ; preds = %134
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8** %12, align 8
  br label %149

140:                                              ; preds = %134
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i8** %12, align 8
  br label %149

141:                                              ; preds = %134
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0), i8** %12, align 8
  br label %149

142:                                              ; preds = %134
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i8** %12, align 8
  br label %149

143:                                              ; preds = %134
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %149

144:                                              ; preds = %134
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %149

145:                                              ; preds = %134
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %149

146:                                              ; preds = %134
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58, i64 0, i64 0), i8** %12, align 8
  br label %149

147:                                              ; preds = %134
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i64 0, i64 0), i8** %12, align 8
  br label %149

148:                                              ; preds = %134
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %149

149:                                              ; preds = %148, %147, %146, %145, %144, %143, %142, %141, %140, %139, %138, %137
  %150 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %149, %130
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %157, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i64 0, i64 0), i32 %158)
  br label %163

160:                                              ; preds = %153
  %161 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %162 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %161, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.62, i64 0, i64 0))
  br label %163

163:                                              ; preds = %160, %156
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, 15
  switch i32 %165, label %174 [
    i32 0, label %166
    i32 1, label %167
    i32 2, label %168
    i32 3, label %169
    i32 4, label %170
    i32 5, label %171
    i32 6, label %172
    i32 7, label %173
  ]

166:                                              ; preds = %163
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i64 0, i64 0), i8** %12, align 8
  br label %175

167:                                              ; preds = %163
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i8** %12, align 8
  br label %175

168:                                              ; preds = %163
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i64 0, i64 0), i8** %12, align 8
  br label %175

169:                                              ; preds = %163
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i64 0, i64 0), i8** %12, align 8
  br label %175

170:                                              ; preds = %163
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %175

171:                                              ; preds = %163
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i8** %12, align 8
  br label %175

172:                                              ; preds = %163
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i8** %12, align 8
  br label %175

173:                                              ; preds = %163
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8** %12, align 8
  br label %175

174:                                              ; preds = %163
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %175

175:                                              ; preds = %174, %173, %172, %171, %170, %169, %168, %167, %166
  %176 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.70, i64 0, i64 0), i8* %177)
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, 15
  %181 = icmp eq i32 %180, 15
  br i1 %181, label %182, label %206

182:                                              ; preds = %175
  %183 = load i32, i32* %9, align 4
  %184 = ashr i32 %183, 3
  %185 = and i32 %184, 3
  switch i32 %185, label %189 [
    i32 0, label %186
    i32 1, label %187
    i32 2, label %188
  ]

186:                                              ; preds = %182
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i8** %12, align 8
  br label %190

187:                                              ; preds = %182
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i64 0, i64 0), i8** %12, align 8
  br label %190

188:                                              ; preds = %182
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i8** %12, align 8
  br label %190

189:                                              ; preds = %182
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %190

190:                                              ; preds = %189, %188, %187, %186
  %191 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %192 = load i8*, i8** %12, align 8
  %193 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %191, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0), i8* %192)
  %194 = load i32, i32* %9, align 4
  %195 = and i32 %194, 7
  switch i32 %195, label %201 [
    i32 0, label %196
    i32 1, label %197
    i32 2, label %198
    i32 3, label %199
    i32 4, label %200
  ]

196:                                              ; preds = %190
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i64 0, i64 0), i8** %12, align 8
  br label %202

197:                                              ; preds = %190
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i8** %12, align 8
  br label %202

198:                                              ; preds = %190
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8** %12, align 8
  br label %202

199:                                              ; preds = %190
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %12, align 8
  br label %202

200:                                              ; preds = %190
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i64 0, i64 0), i8** %12, align 8
  br label %202

201:                                              ; preds = %190
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i8** %12, align 8
  br label %202

202:                                              ; preds = %201, %200, %199, %198, %197, %196
  %203 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = call i32 (%struct.i2c_client*, i8*, ...) @v4l_info(%struct.i2c_client* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0), i8* %204)
  br label %206

206:                                              ; preds = %202, %175
  ret void
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_info(%struct.i2c_client*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
