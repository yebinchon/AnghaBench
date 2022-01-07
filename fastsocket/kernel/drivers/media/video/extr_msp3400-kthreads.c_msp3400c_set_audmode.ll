; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_set_audmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-kthreads.c_msp3400c_set_audmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.msp_state = type { i32, i64, i32, i32, i32 }

@msp3400c_set_audmode.strmode = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"mono\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stereo\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"lang2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"lang1\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"lang1+lang2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@msp_debug = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [65 x i8] c"set_audmode called with mode=%d instead of set_source (ignored)\0A\00", align 1
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_LANG2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"FM set_audmode: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SAT set_audmode: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"NICAM set_audmode: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"BTSC set_audmode: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"extern set_audmode: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"FM-Radio set_audmode: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"mono set_audmode\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"set audmode %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"switching to AM mono\0A\00", align 1
@SCART_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [40 x i8] c"set_audmode final source/matrix = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @msp3400c_set_audmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msp3400c_set_audmode(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.msp_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @i2c_get_clientdata(%struct.i2c_client* %7)
  %9 = call %struct.msp_state* @to_state(i32 %8)
  store %struct.msp_state* %9, %struct.msp_state** %3, align 8
  %10 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %11 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %16 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %21 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* @msp3400c_set_audmode.strmode, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %14, %1
  br label %27

27:                                               ; preds = %26, %19
  %28 = phi i8* [ %25, %19 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %26 ]
  store i8* %28, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %29 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %30 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  %32 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %33 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i32, i32* @msp_debug, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %40 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %41 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %38, %struct.i2c_client* %39, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %42)
  br label %194

44:                                               ; preds = %27
  %45 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %46 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 138
  br i1 %48, label %49, label %78

49:                                               ; preds = %44
  %50 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %51 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 129, i32* %6, align 4
  br label %77

56:                                               ; preds = %49
  %57 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %58 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V4L2_TUNER_SUB_LANG2, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 129
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %63
  store i32 132, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %66
  br label %76

71:                                               ; preds = %56
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 129
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 128, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %75, %70
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %44
  %79 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %80 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %148 [
    i32 133, label %82
    i32 134, label %95
    i32 137, label %122
    i32 136, label %122
    i32 140, label %122
    i32 139, label %133
    i32 138, label %138
    i32 135, label %143
  ]

82:                                               ; preds = %78
  %83 = load i32, i32* @msp_debug, align 4
  %84 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %83, %struct.i2c_client* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %94 [
    i32 128, label %88
    i32 129, label %91
    i32 132, label %91
    i32 130, label %91
    i32 131, label %91
  ]

88:                                               ; preds = %82
  %89 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %90 = call i32 @msp_write_dsp(%struct.i2c_client* %89, i32 14, i32 12289)
  br label %94

91:                                               ; preds = %82, %82, %82, %82
  %92 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %93 = call i32 @msp_write_dsp(%struct.i2c_client* %92, i32 14, i32 12288)
  br label %94

94:                                               ; preds = %82, %91, %88
  br label %152

95:                                               ; preds = %78
  %96 = load i32, i32* @msp_debug, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %96, %struct.i2c_client* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* %6, align 4
  switch i32 %100, label %121 [
    i32 129, label %101
    i32 128, label %106
    i32 131, label %106
    i32 132, label %111
    i32 130, label %116
  ]

101:                                              ; preds = %95
  %102 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %103 = call i32 @MSP_CARRIER(double 6.500000e+00)
  %104 = call i32 @MSP_CARRIER(double 6.500000e+00)
  %105 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %102, i32 %103, i32 %104)
  br label %121

106:                                              ; preds = %95, %95
  %107 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %108 = call i32 @MSP_CARRIER(double 7.200000e+00)
  %109 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %110 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %107, i32 %108, i32 %109)
  br label %121

111:                                              ; preds = %95
  %112 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %113 = call i32 @MSP_CARRIER(double 7.380000e+00)
  %114 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %115 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %112, i32 %113, i32 %114)
  br label %121

116:                                              ; preds = %95
  %117 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %118 = call i32 @MSP_CARRIER(double 7.380000e+00)
  %119 = call i32 @MSP_CARRIER(double 0x401C147AE147AE14)
  %120 = call i32 @msp3400c_set_carrier(%struct.i2c_client* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %95, %116, %111, %106, %101
  br label %152

122:                                              ; preds = %78, %78, %78
  %123 = load i32, i32* @msp_debug, align 4
  %124 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %123, %struct.i2c_client* %124, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  %127 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %128 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  store i32 256, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %122
  br label %152

133:                                              ; preds = %78
  %134 = load i32, i32* @msp_debug, align 4
  %135 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %134, %struct.i2c_client* %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %136)
  br label %152

138:                                              ; preds = %78
  %139 = load i32, i32* @msp_debug, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %139, %struct.i2c_client* %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %141)
  store i32 512, i32* %5, align 4
  br label %152

143:                                              ; preds = %78
  %144 = load i32, i32* @msp_debug, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %144, %struct.i2c_client* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %146)
  br label %152

148:                                              ; preds = %78
  %149 = load i32, i32* @msp_debug, align 4
  %150 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %151 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %149, %struct.i2c_client* %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %194

152:                                              ; preds = %143, %138, %133, %132, %121, %94
  %153 = load i32, i32* @msp_debug, align 4
  %154 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %153, %struct.i2c_client* %154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %6, align 4
  switch i32 %157, label %186 [
    i32 128, label %158
    i32 131, label %158
    i32 129, label %161
    i32 132, label %182
    i32 130, label %183
  ]

158:                                              ; preds = %152, %152
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, 32
  store i32 %160, i32* %5, align 4
  br label %186

161:                                              ; preds = %152
  %162 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %163 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 140
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32, i32* @msp_debug, align 4
  %168 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %169 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %167, %struct.i2c_client* %168, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %170 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %171 = load i32, i32* @SCART_MONO, align 4
  %172 = call i32 @msp_set_scart(%struct.i2c_client* %170, i32 %171, i32 0)
  store i32 512, i32* %5, align 4
  br label %186

173:                                              ; preds = %161
  %174 = load %struct.msp_state*, %struct.msp_state** %3, align 8
  %175 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 48, i32* %5, align 4
  br label %181

181:                                              ; preds = %180, %173
  br label %186

182:                                              ; preds = %152
  br label %186

183:                                              ; preds = %152
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, 16
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %152, %183, %182, %181, %166, %158
  %187 = load i32, i32* @msp_debug, align 4
  %188 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 (i32, i32, %struct.i2c_client*, i8*, ...) @v4l_dbg(i32 1, i32 %187, %struct.i2c_client* %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i32 %189)
  %191 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @msp_set_source(%struct.i2c_client* %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %148, %37
  ret void
}

declare dso_local %struct.msp_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, ...) #1

declare dso_local i32 @msp_write_dsp(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp3400c_set_carrier(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @MSP_CARRIER(double) #1

declare dso_local i32 @msp_set_scart(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_set_source(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
