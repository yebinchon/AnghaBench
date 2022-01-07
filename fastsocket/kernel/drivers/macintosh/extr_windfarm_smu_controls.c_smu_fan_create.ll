; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_controls.c_smu_fan_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_windfarm_smu_controls.c_smu_fan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan_control = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i32, i32* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@smu_fan_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@WF_CONTROL_PWM_FAN = common dso_local global i32 0, align 4
@WF_CONTROL_RPM_FAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Rear Fan 0\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Rear Fan\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Rear fan 0\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Rear fan\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"CPU A EXHAUST\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-0\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Rear Fan 1\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"Rear fan 1\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"CPU B EXHAUST\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-1\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Front Fan 0\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Front Fan\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Front fan 0\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"Front fan\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"CPU A INTAKE\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-0\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"Front Fan 1\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Front fan 1\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CPU B INTAKE\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"CPU A PUMP\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"cpu-pump-0\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"CPU B PUMP\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"cpu-pump-1\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"Slots Fan\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Slots fan\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"EXPANSION SLOTS INTAKE\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"slots-fan\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Drive Bay\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Drive bay\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"DRIVE BAY A INTAKE\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"drive-bay-fan\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"BACKSIDE\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"backside-fan\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"System Fan\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"System fan\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"system-fan\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"CPU Fan\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"CPU fan\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"cpu-fan\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"Hard Drive\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"Hard drive\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"HDD Fan\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"hard-drive-fan\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"ODD Fan\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"optical-drive-fan\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"min-value\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"max-value\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smu_fan_control* (%struct.device_node*, i32)* @smu_fan_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smu_fan_control* @smu_fan_create(%struct.device_node* %0, i32 %1) #0 {
  %3 = alloca %struct.smu_fan_control*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_fan_control*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.smu_fan_control* @kmalloc(i32 48, i32 %10)
  store %struct.smu_fan_control* %11, %struct.smu_fan_control** %6, align 8
  %12 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %13 = icmp eq %struct.smu_fan_control* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.smu_fan_control* null, %struct.smu_fan_control** %3, align 8
  br label %292

15:                                               ; preds = %2
  %16 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %17 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32* @smu_fan_ops, i32** %18, align 8
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i8* @of_get_property(%struct.device_node* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %289

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %27 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @WF_CONTROL_PWM_FAN, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @WF_CONTROL_RPM_FAN, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %37 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %40 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i8* null, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %34
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57, %53, %49, %45, %34
  %62 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %63 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %64, align 8
  br label %185

65:                                               ; preds = %57
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73, %69, %65
  %78 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %79 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8** %80, align 8
  br label %184

81:                                               ; preds = %73
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @strcmp(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %97, %93, %89, %85, %81
  %102 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %103 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8** %104, align 8
  br label %183

105:                                              ; preds = %97
  %106 = load i8*, i8** %9, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %109, %105
  %118 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %119 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %120, align 8
  br label %182

121:                                              ; preds = %113
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @strcmp(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %127 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %128, align 8
  br label %181

129:                                              ; preds = %121
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %135 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i8** %136, align 8
  br label %180

137:                                              ; preds = %129
  %138 = load i8*, i8** %9, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %145, %141, %137
  %150 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %151 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8** %152, align 8
  br label %179

153:                                              ; preds = %145
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %161, %157, %153
  %166 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %167 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8** %168, align 8
  br label %178

169:                                              ; preds = %161
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @strcmp(i8* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %175 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %176, align 8
  br label %177

177:                                              ; preds = %173, %169
  br label %178

178:                                              ; preds = %177, %165
  br label %179

179:                                              ; preds = %178, %149
  br label %180

180:                                              ; preds = %179, %133
  br label %181

181:                                              ; preds = %180, %125
  br label %182

182:                                              ; preds = %181, %117
  br label %183

183:                                              ; preds = %182, %101
  br label %184

184:                                              ; preds = %183, %77
  br label %185

185:                                              ; preds = %184, %61
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = load i8*, i8** %9, align 8
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0))
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189, %185
  %194 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %195 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8** %196, align 8
  br label %241

197:                                              ; preds = %189
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0))
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load i8*, i8** %9, align 8
  %203 = call i32 @strcmp(i8* %202, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0))
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %209, label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %207 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0), i8** %208, align 8
  br label %240

209:                                              ; preds = %201
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %209
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 @strcmp(i8* %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i64 0, i64 0))
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %213, %209
  %218 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %219 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8** %220, align 8
  br label %239

221:                                              ; preds = %213
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @strcmp(i8* %222, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0))
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %221
  %226 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %227 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8** %228, align 8
  br label %238

229:                                              ; preds = %221
  %230 = load i8*, i8** %9, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %235 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.46, i64 0, i64 0), i8** %236, align 8
  br label %237

237:                                              ; preds = %233, %229
  br label %238

238:                                              ; preds = %237, %225
  br label %239

239:                                              ; preds = %238, %217
  br label %240

240:                                              ; preds = %239, %205
  br label %241

241:                                              ; preds = %240, %193
  %242 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %243 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = icmp eq i8* %245, null
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  br label %289

248:                                              ; preds = %241
  %249 = load %struct.device_node*, %struct.device_node** %4, align 8
  %250 = call i8* @of_get_property(%struct.device_node* %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i64 0, i64 0), i32* null)
  %251 = bitcast i8* %250 to i32*
  store i32* %251, i32** %7, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = icmp eq i32* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  br label %289

255:                                              ; preds = %248
  %256 = load i32*, i32** %7, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %259 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.device_node*, %struct.device_node** %4, align 8
  %261 = call i8* @of_get_property(%struct.device_node* %260, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i32* null)
  %262 = bitcast i8* %261 to i32*
  store i32* %262, i32** %7, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = icmp eq i32* %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %255
  br label %289

266:                                              ; preds = %255
  %267 = load i32*, i32** %7, align 8
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %270 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %269, i32 0, i32 3
  store i32 %268, i32* %270, align 4
  %271 = load %struct.device_node*, %struct.device_node** %4, align 8
  %272 = call i8* @of_get_property(%struct.device_node* %271, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i32* null)
  %273 = bitcast i8* %272 to i32*
  store i32* %273, i32** %8, align 8
  %274 = load i32*, i32** %8, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %266
  br label %289

277:                                              ; preds = %266
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %281 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 8
  %282 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %283 = getelementptr inbounds %struct.smu_fan_control, %struct.smu_fan_control* %282, i32 0, i32 1
  %284 = call i64 @wf_register_control(%struct.TYPE_2__* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  br label %289

287:                                              ; preds = %277
  %288 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  store %struct.smu_fan_control* %288, %struct.smu_fan_control** %3, align 8
  br label %292

289:                                              ; preds = %286, %276, %265, %254, %247, %23
  %290 = load %struct.smu_fan_control*, %struct.smu_fan_control** %6, align 8
  %291 = call i32 @kfree(%struct.smu_fan_control* %290)
  store %struct.smu_fan_control* null, %struct.smu_fan_control** %3, align 8
  br label %292

292:                                              ; preds = %289, %287, %14
  %293 = load %struct.smu_fan_control*, %struct.smu_fan_control** %3, align 8
  ret %struct.smu_fan_control* %293
}

declare dso_local %struct.smu_fan_control* @kmalloc(i32, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @wf_register_control(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.smu_fan_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
