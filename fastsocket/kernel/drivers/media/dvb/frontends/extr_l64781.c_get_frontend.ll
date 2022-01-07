; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.l64781_state* }
%struct.l64781_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i32, i32 }

@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unexpected value for transmission_mode\0A\00", align 1
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Unexpected value for code_rate_HP\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unexpected value for code_rate_LP\0A\00", align 1
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unexpected value for constellation\0A\00", align 1
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Unexpected value for hierarchy\0A\00", align 1
@INVERSION_ON = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.l64781_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.l64781_state*, %struct.l64781_state** %8, align 8
  store %struct.l64781_state* %9, %struct.l64781_state** %5, align 8
  %10 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %11 = call i32 @l64781_readreg(%struct.l64781_state* %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 3
  switch i32 %13, label %38 [
    i32 0, label %14
    i32 1, label %20
    i32 2, label %26
    i32 3, label %32
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %16 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  store i32 %15, i32* %19, align 4
  br label %38

20:                                               ; preds = %2
  %21 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32 %21, i32* %25, align 4
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %2, %32, %26, %20, %14
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 2
  %41 = and i32 %40, 3
  switch i32 %41, label %54 [
    i32 0, label %42
    i32 1, label %48
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %44 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i32 %43, i32* %47, align 8
  br label %56

48:                                               ; preds = %38
  %49 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 %49, i32* %53, align 8
  br label %56

54:                                               ; preds = %38
  %55 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %48, %42
  %57 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %58 = call i32 @l64781_readreg(%struct.l64781_state* %57, i32 5)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, 7
  switch i32 %60, label %91 [
    i32 0, label %61
    i32 1, label %67
    i32 2, label %73
    i32 3, label %79
    i32 4, label %85
  ]

61:                                               ; preds = %56
  %62 = load i8*, i8** @FEC_1_2, align 8
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 3
  store i8* %62, i8** %66, align 8
  br label %93

67:                                               ; preds = %56
  %68 = load i8*, i8** @FEC_2_3, align 8
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i8* %68, i8** %72, align 8
  br label %93

73:                                               ; preds = %56
  %74 = load i8*, i8** @FEC_3_4, align 8
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  store i8* %74, i8** %78, align 8
  br label %93

79:                                               ; preds = %56
  %80 = load i8*, i8** @FEC_5_6, align 8
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i8* %80, i8** %84, align 8
  br label %93

85:                                               ; preds = %56
  %86 = load i8*, i8** @FEC_7_8, align 8
  %87 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  store i8* %86, i8** %90, align 8
  br label %93

91:                                               ; preds = %56
  %92 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %85, %79, %73, %67, %61
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 3
  %96 = and i32 %95, 7
  switch i32 %96, label %127 [
    i32 0, label %97
    i32 1, label %103
    i32 2, label %109
    i32 3, label %115
    i32 4, label %121
  ]

97:                                               ; preds = %93
  %98 = load i8*, i8** @FEC_1_2, align 8
  %99 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i8* %98, i8** %102, align 8
  br label %129

103:                                              ; preds = %93
  %104 = load i8*, i8** @FEC_2_3, align 8
  %105 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  store i8* %104, i8** %108, align 8
  br label %129

109:                                              ; preds = %93
  %110 = load i8*, i8** @FEC_3_4, align 8
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  store i8* %110, i8** %114, align 8
  br label %129

115:                                              ; preds = %93
  %116 = load i8*, i8** @FEC_5_6, align 8
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i8* %116, i8** %120, align 8
  br label %129

121:                                              ; preds = %93
  %122 = load i8*, i8** @FEC_7_8, align 8
  %123 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i8* %122, i8** %126, align 8
  br label %129

127:                                              ; preds = %93
  %128 = call i32 @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %121, %115, %109, %103, %97
  %130 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %131 = call i32 @l64781_readreg(%struct.l64781_state* %130, i32 6)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 3
  switch i32 %133, label %152 [
    i32 0, label %134
    i32 1, label %140
    i32 2, label %146
  ]

134:                                              ; preds = %129
  %135 = load i32, i32* @QPSK, align 4
  %136 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %137 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  br label %154

140:                                              ; preds = %129
  %141 = load i32, i32* @QAM_16, align 4
  %142 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %143 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 4
  br label %154

146:                                              ; preds = %129
  %147 = load i32, i32* @QAM_64, align 4
  %148 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %149 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %147, i32* %151, align 4
  br label %154

152:                                              ; preds = %129
  %153 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %146, %140, %134
  %155 = load i32, i32* %6, align 4
  %156 = ashr i32 %155, 2
  %157 = and i32 %156, 7
  switch i32 %157, label %182 [
    i32 0, label %158
    i32 1, label %164
    i32 2, label %170
    i32 3, label %176
  ]

158:                                              ; preds = %154
  %159 = load i32, i32* @HIERARCHY_NONE, align 4
  %160 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %161 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  br label %184

164:                                              ; preds = %154
  %165 = load i32, i32* @HIERARCHY_1, align 4
  %166 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %167 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  br label %184

170:                                              ; preds = %154
  %171 = load i32, i32* @HIERARCHY_2, align 4
  %172 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %173 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  store i32 %171, i32* %175, align 8
  br label %184

176:                                              ; preds = %154
  %177 = load i32, i32* @HIERARCHY_4, align 4
  %178 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %179 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 %177, i32* %181, align 8
  br label %184

182:                                              ; preds = %154
  %183 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %176, %170, %164, %158
  %185 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %186 = call i32 @l64781_readreg(%struct.l64781_state* %185, i32 29)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, 128
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = load i32, i32* @INVERSION_ON, align 4
  br label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @INVERSION_OFF, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  %196 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %197 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %199 = call i32 @l64781_readreg(%struct.l64781_state* %198, i32 8)
  %200 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %201 = call i32 @l64781_readreg(%struct.l64781_state* %200, i32 9)
  %202 = shl i32 %201, 8
  %203 = or i32 %199, %202
  %204 = load %struct.l64781_state*, %struct.l64781_state** %5, align 8
  %205 = call i32 @l64781_readreg(%struct.l64781_state* %204, i32 10)
  %206 = shl i32 %205, 16
  %207 = or i32 %203, %206
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %210 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, %208
  store i32 %212, i32* %210, align 8
  ret i32 0
}

declare dso_local i32 @l64781_readreg(%struct.l64781_state*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
