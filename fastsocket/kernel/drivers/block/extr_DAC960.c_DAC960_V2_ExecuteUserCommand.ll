; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ExecuteUserCommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ExecuteUserCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i32, i32, i32, %struct.TYPE_32__, i32, i64 }
%struct.TYPE_32__ = type { %struct.TYPE_51__*, i32 }
%struct.TYPE_51__ = type { i64 }
%struct.TYPE_43__ = type { %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { %struct.TYPE_50__, %struct.TYPE_34__, %struct.TYPE_46__, %struct.TYPE_44__, %struct.TYPE_39__, %struct.TYPE_35__ }
%struct.TYPE_50__ = type { i32, %struct.TYPE_49__, i32, i64, %struct.TYPE_47__, i8* }
%struct.TYPE_49__ = type { %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i32, i32 }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__, i8* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, i32, i32, %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i8 }
%struct.TYPE_44__ = type { i32, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i16 }
%struct.TYPE_39__ = type { %struct.TYPE_36__, i8*, %struct.TYPE_38__ }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_38__ = type { i16 }
%struct.TYPE_35__ = type { i32, i32 }

@DAC960_ImmediateCommand = common dso_local global i32 0, align 4
@DAC960_V2_IOCTL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"flush-cache\00", align 1
@DAC960_V2_PauseDevice = common dso_local global i32 0, align 4
@DAC960_V2_RAID_Controller = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Cache Flush Completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@DAC960_V2_SetDeviceState = common dso_local global i8* null, align 8
@DAC960_V2_Device_Dead = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Kill of Physical Device %d:%d %s\0A\00", align 1
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Succeeded\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"make-online\00", align 1
@DAC960_V2_Device_Online = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"Make Online of Physical Device %d:%d %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"make-standby\00", align 1
@DAC960_V2_Device_Standby = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"Make Standby of Physical Device %d:%d %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@DAC960_V2_RebuildDeviceStart = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Rebuild of Physical Device %d:%d %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Initiated\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Not Initiated\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"cancel-rebuild\00", align 1
@DAC960_V2_RebuildDeviceStop = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Not Cancelled\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"check-consistency\00", align 1
@DAC960_V2_ConsistencyCheckStart = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [59 x i8] c"Consistency Check of Logical Drive %d (/dev/rd/c%dd%d) %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"cancel-consistency-check\00", align 1
@DAC960_V2_ConsistencyCheckStop = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"perform-discovery\00", align 1
@DAC960_V2_StartDiscovery = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"Discovery %s\0A\00", align 1
@DAC960_V2_GetControllerInfo = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Discovery Completed\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"suppress-enclosure-messages\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Illegal User Command: '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_41__*, i8*)* @DAC960_V2_ExecuteUserCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DAC960_V2_ExecuteUserCommand(%struct.TYPE_41__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_41__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %20, %2
  %17 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %18 = call %struct.TYPE_43__* @DAC960_AllocateCommand(%struct.TYPE_41__* %17)
  store %struct.TYPE_43__* %18, %struct.TYPE_43__** %5, align 8
  %19 = icmp eq %struct.TYPE_43__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %22 = call i32 @DAC960_WaitForCommand(%struct.TYPE_41__* %21)
  br label %16

23:                                               ; preds = %16
  %24 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %24, i32 0, i32 1
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %31 = call i32 @DAC960_V2_ClearCommand(%struct.TYPE_43__* %30)
  %32 = load i32, i32* @DAC960_ImmediateCommand, align 4
  %33 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %36, i32 0, i32 1
  store %struct.TYPE_40__* %37, %struct.TYPE_40__** %6, align 8
  %38 = load i8*, i8** @DAC960_V2_IOCTL, align 8
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 2
  store i8* %38, i8** %41, align 8
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %23
  %54 = load i32, i32* @DAC960_V2_PauseDevice, align 4
  %55 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @DAC960_V2_RAID_Controller, align 4
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %63 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %62)
  %64 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %65 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_41__* %64)
  br label %488

66:                                               ; preds = %23
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @strncmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %113

70:                                               ; preds = %66
  %71 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 4
  %74 = call i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__* %71, i8* %73, i8* %8, i8* %9)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %113

76:                                               ; preds = %70
  %77 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %78 = load i8, i8* %8, align 1
  %79 = load i8, i8* %9, align 1
  %80 = call i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__* %77, i8 zeroext %78, i8 zeroext %79, i16* %11)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i16, i16* %11, align 2
  %84 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 0
  store i16 %83, i16* %87, align 8
  %88 = load i8*, i8** @DAC960_V2_SetDeviceState, align 8
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load i32, i32* @DAC960_V2_Device_Dead, align 4
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 8
  %97 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %98 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %97)
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %100 = load i8, i8* %8, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %9, align 1
  %103 = zext i8 %102 to i32
  %104 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %112 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_41__* %99, i32 %101, i32 %103, i8* %111)
  br label %487

113:                                              ; preds = %76, %70, %66
  %114 = load i8*, i8** %4, align 8
  %115 = call i64 @strncmp(i8* %114, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %160

117:                                              ; preds = %113
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 11
  %121 = call i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__* %118, i8* %120, i8* %8, i8* %9)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %160

123:                                              ; preds = %117
  %124 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %125 = load i8, i8* %8, align 1
  %126 = load i8, i8* %9, align 1
  %127 = call i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__* %124, i8 zeroext %125, i8 zeroext %126, i16* %11)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %123
  %130 = load i16, i16* %11, align 2
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %133, i32 0, i32 0
  store i16 %130, i16* %134, align 8
  %135 = load i8*, i8** @DAC960_V2_SetDeviceState, align 8
  %136 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  %139 = load i32, i32* @DAC960_V2_Device_Online, align 4
  %140 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %142, i32 0, i32 0
  store i32 %139, i32* %143, align 8
  %144 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %145 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %144)
  %146 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %147 = load i8, i8* %8, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* %9, align 1
  %150 = zext i8 %149 to i32
  %151 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %156 = icmp eq i64 %154, %155
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %159 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_41__* %146, i32 %148, i32 %150, i8* %158)
  br label %486

160:                                              ; preds = %123, %117, %113
  %161 = load i8*, i8** %4, align 8
  %162 = call i64 @strncmp(i8* %161, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 12)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %207

164:                                              ; preds = %160
  %165 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 12
  %168 = call i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__* %165, i8* %167, i8* %8, i8* %9)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %207

170:                                              ; preds = %164
  %171 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %172 = load i8, i8* %8, align 1
  %173 = load i8, i8* %9, align 1
  %174 = call i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__* %171, i8 zeroext %172, i8 zeroext %173, i16* %11)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  %177 = load i16, i16* %11, align 2
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %180, i32 0, i32 0
  store i16 %177, i16* %181, align 8
  %182 = load i8*, i8** @DAC960_V2_SetDeviceState, align 8
  %183 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 1
  store i8* %182, i8** %185, align 8
  %186 = load i32, i32* @DAC960_V2_Device_Standby, align 4
  %187 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 0
  store i32 %186, i32* %190, align 8
  %191 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %192 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %191)
  %193 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %194 = load i8, i8* %8, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %9, align 1
  %197 = zext i8 %196 to i32
  %198 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %203 = icmp eq i64 %201, %202
  %204 = zext i1 %203 to i64
  %205 = select i1 %203, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %206 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_41__* %193, i32 %195, i32 %197, i8* %205)
  br label %485

207:                                              ; preds = %170, %164, %160
  %208 = load i8*, i8** %4, align 8
  %209 = call i64 @strncmp(i8* %208, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %249

211:                                              ; preds = %207
  %212 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 7
  %215 = call i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__* %212, i8* %214, i8* %8, i8* %9)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %249

217:                                              ; preds = %211
  %218 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %219 = load i8, i8* %8, align 1
  %220 = load i8, i8* %9, align 1
  %221 = call i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__* %218, i8 zeroext %219, i8 zeroext %220, i16* %11)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %249

223:                                              ; preds = %217
  %224 = load i16, i16* %11, align 2
  %225 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %227, i32 0, i32 0
  store i16 %224, i16* %228, align 4
  %229 = load i32, i32* @DAC960_V2_RebuildDeviceStart, align 4
  %230 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 8
  %233 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %234 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %233)
  %235 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %236 = load i8, i8* %8, align 1
  %237 = zext i8 %236 to i32
  %238 = load i8, i8* %9, align 1
  %239 = zext i8 %238 to i32
  %240 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)
  %248 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_41__* %235, i32 %237, i32 %239, i8* %247)
  br label %484

249:                                              ; preds = %217, %211, %207
  %250 = load i8*, i8** %4, align 8
  %251 = call i64 @strncmp(i8* %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 14)
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %291

253:                                              ; preds = %249
  %254 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 14
  %257 = call i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__* %254, i8* %256, i8* %8, i8* %9)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %291

259:                                              ; preds = %253
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %261 = load i8, i8* %8, align 1
  %262 = load i8, i8* %9, align 1
  %263 = call i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__* %260, i8 zeroext %261, i8 zeroext %262, i16* %11)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %259
  %266 = load i16, i16* %11, align 2
  %267 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %269, i32 0, i32 0
  store i16 %266, i16* %270, align 4
  %271 = load i32, i32* @DAC960_V2_RebuildDeviceStop, align 4
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %273, i32 0, i32 0
  store i32 %271, i32* %274, align 8
  %275 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %276 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %275)
  %277 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %278 = load i8, i8* %8, align 1
  %279 = zext i8 %278 to i32
  %280 = load i8, i8* %9, align 1
  %281 = zext i8 %280 to i32
  %282 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %287 = icmp eq i64 %285, %286
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0)
  %290 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_41__* %277, i32 %279, i32 %281, i8* %289)
  br label %483

291:                                              ; preds = %259, %253, %249
  %292 = load i8*, i8** %4, align 8
  %293 = call i64 @strncmp(i8* %292, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 17)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %336

295:                                              ; preds = %291
  %296 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %297 = load i8*, i8** %4, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 17
  %299 = call i64 @DAC960_ParseLogicalDrive(%struct.TYPE_41__* %296, i8* %298, i8* %10)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %336

301:                                              ; preds = %295
  %302 = load i8, i8* %10, align 1
  %303 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %305, i32 0, i32 0
  store i8 %302, i8* %306, align 4
  %307 = load i32, i32* @DAC960_V2_ConsistencyCheckStart, align 4
  %308 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %309, i32 0, i32 2
  store i32 %307, i32* %310, align 8
  %311 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %312, i32 0, i32 0
  store i32 1, i32* %313, align 8
  %314 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %315, i32 0, i32 1
  store i32 0, i32* %316, align 4
  %317 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %318 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %317)
  %319 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %320 = load i8, i8* %10, align 1
  %321 = zext i8 %320 to i32
  %322 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = load i8, i8* %10, align 1
  %326 = zext i8 %325 to i32
  %327 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %332 = icmp eq i64 %330, %331
  %333 = zext i1 %332 to i64
  %334 = select i1 %332, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)
  %335 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_41__* %319, i32 %321, i32 %324, i32 %326, i8* %334)
  br label %482

336:                                              ; preds = %295, %291
  %337 = load i8*, i8** %4, align 8
  %338 = call i64 @strncmp(i8* %337, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 24)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %375

340:                                              ; preds = %336
  %341 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %342 = load i8*, i8** %4, align 8
  %343 = getelementptr inbounds i8, i8* %342, i64 24
  %344 = call i64 @DAC960_ParseLogicalDrive(%struct.TYPE_41__* %341, i8* %343, i8* %10)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %340
  %347 = load i8, i8* %10, align 1
  %348 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %349, i32 0, i32 3
  %351 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %350, i32 0, i32 0
  store i8 %347, i8* %351, align 4
  %352 = load i32, i32* @DAC960_V2_ConsistencyCheckStop, align 4
  %353 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %354, i32 0, i32 2
  store i32 %352, i32* %355, align 8
  %356 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %357 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %356)
  %358 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %359 = load i8, i8* %10, align 1
  %360 = zext i8 %359 to i32
  %361 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = load i8, i8* %10, align 1
  %365 = zext i8 %364 to i32
  %366 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %371 = icmp eq i64 %369, %370
  %372 = zext i1 %371 to i64
  %373 = select i1 %371, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0)
  %374 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_41__* %358, i32 %360, i32 %363, i32 %365, i8* %373)
  br label %481

375:                                              ; preds = %340, %336
  %376 = load i8*, i8** %4, align 8
  %377 = call i64 @strcmp(i8* %376, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %468

379:                                              ; preds = %375
  %380 = load i32, i32* @DAC960_V2_StartDiscovery, align 4
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %382, i32 0, i32 0
  store i32 %380, i32* %383, align 8
  %384 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %385 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %384)
  %386 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %387 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %392 = icmp eq i64 %390, %391
  %393 = zext i1 %392 to i64
  %394 = select i1 %392, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0)
  %395 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_41__* %386, i8* %394)
  %396 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %467

402:                                              ; preds = %379
  %403 = load i8*, i8** @DAC960_V2_IOCTL, align 8
  %404 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %405, i32 0, i32 5
  store i8* %403, i8** %406, align 8
  %407 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %408, i32 0, i32 4
  %410 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %409, i32 0, i32 0
  store i32 1, i32* %410, align 8
  %411 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %412, i32 0, i32 4
  %414 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %413, i32 0, i32 1
  store i32 1, i32* %414, align 4
  %415 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %416, i32 0, i32 0
  store i32 4, i32* %417, align 8
  %418 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %419 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %419, i32 0, i32 3
  store i64 0, i64* %420, align 8
  %421 = load i32, i32* @DAC960_V2_GetControllerInfo, align 4
  %422 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %423, i32 0, i32 2
  store i32 %421, i32* %424, align 8
  %425 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %425, i32 0, i32 3
  %427 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_48__*, %struct.TYPE_48__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %433, i64 0
  %435 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %434, i32 0, i32 1
  store i32 %428, i32* %435, align 4
  %436 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %437 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %441 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %442, i32 0, i32 0
  %444 = load %struct.TYPE_48__*, %struct.TYPE_48__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %444, i64 0
  %446 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %445, i32 0, i32 0
  store i32 %439, i32* %446, align 4
  %447 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %448 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %447)
  br label %449

449:                                              ; preds = %457, %402
  %450 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %451 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %450, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 0
  %453 = load %struct.TYPE_51__*, %struct.TYPE_51__** %452, align 8
  %454 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %464

457:                                              ; preds = %449
  %458 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %459 = call i32 @DAC960_ExecuteCommand(%struct.TYPE_43__* %458)
  %460 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %460, i32 0, i32 2
  %462 = load i32, i32* @HZ, align 4
  %463 = call i32 @sleep_on_timeout(i32* %461, i32 %462)
  br label %449

464:                                              ; preds = %449
  %465 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %466 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_41__* %465)
  br label %467

467:                                              ; preds = %464, %379
  br label %480

468:                                              ; preds = %375
  %469 = load i8*, i8** %4, align 8
  %470 = call i64 @strcmp(i8* %469, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %473, i32 0, i32 0
  store i32 1, i32* %474, align 8
  br label %479

475:                                              ; preds = %468
  %476 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %477 = load i8*, i8** %4, align 8
  %478 = call i32 (i8*, %struct.TYPE_41__*, ...) @DAC960_UserCritical(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), %struct.TYPE_41__* %476, i8* %477)
  br label %479

479:                                              ; preds = %475, %472
  br label %480

480:                                              ; preds = %479, %467
  br label %481

481:                                              ; preds = %480, %346
  br label %482

482:                                              ; preds = %481, %301
  br label %483

483:                                              ; preds = %482, %265
  br label %484

484:                                              ; preds = %483, %223
  br label %485

485:                                              ; preds = %484, %176
  br label %486

486:                                              ; preds = %485, %129
  br label %487

487:                                              ; preds = %486, %82
  br label %488

488:                                              ; preds = %487, %53
  %489 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %489, i32 0, i32 1
  %491 = load i64, i64* %7, align 8
  %492 = call i32 @spin_lock_irqsave(i32* %490, i64 %491)
  %493 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %494 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_43__* %493)
  %495 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %496 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %495, i32 0, i32 1
  %497 = load i64, i64* %7, align 8
  %498 = call i32 @spin_unlock_irqrestore(i32* %496, i64 %497)
  ret i32 1
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.TYPE_43__* @DAC960_AllocateCommand(%struct.TYPE_41__*) #1

declare dso_local i32 @DAC960_WaitForCommand(%struct.TYPE_41__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @DAC960_V2_ClearCommand(%struct.TYPE_43__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @DAC960_ExecuteCommand(%struct.TYPE_43__*) #1

declare dso_local i32 @DAC960_UserCritical(i8*, %struct.TYPE_41__*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @DAC960_ParsePhysicalDevice(%struct.TYPE_41__*, i8*, i8*, i8*) #1

declare dso_local i64 @DAC960_V2_TranslatePhysicalDevice(%struct.TYPE_43__*, i8 zeroext, i8 zeroext, i16*) #1

declare dso_local i64 @DAC960_ParseLogicalDrive(%struct.TYPE_41__*, i8*, i8*) #1

declare dso_local i32 @sleep_on_timeout(i32*, i32) #1

declare dso_local i32 @DAC960_DeallocateCommand(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
