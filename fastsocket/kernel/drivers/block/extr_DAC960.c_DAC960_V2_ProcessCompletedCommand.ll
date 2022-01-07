; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ProcessCompletedCommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_DAC960.c_DAC960_V2_ProcessCompletedCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_62__ = type { i64, %struct.TYPE_55__, i32*, %struct.TYPE_61__* }
%struct.TYPE_55__ = type { i64, %struct.TYPE_59__*, i32, i32, %struct.TYPE_63__*, %struct.TYPE_60__ }
%struct.TYPE_59__ = type { i32 (%struct.TYPE_59__*)*, i32, i32, i64 }
%struct.TYPE_63__ = type { i64 }
%struct.TYPE_60__ = type { %struct.TYPE_54__, %struct.TYPE_49__, %struct.TYPE_69__, %struct.TYPE_58__ }
%struct.TYPE_54__ = type { i32, %struct.TYPE_53__, i64, %struct.TYPE_50__, i8* }
%struct.TYPE_53__ = type { %struct.TYPE_52__* }
%struct.TYPE_52__ = type { i32, i32 }
%struct.TYPE_50__ = type { i16 }
%struct.TYPE_49__ = type { i32, %struct.TYPE_48__, i64, %struct.TYPE_70__, i8* }
%struct.TYPE_48__ = type { %struct.TYPE_71__* }
%struct.TYPE_71__ = type { i32, i32 }
%struct.TYPE_70__ = type { i64, i64, i64 }
%struct.TYPE_69__ = type { i32, i32, i32, %struct.TYPE_68__, i64, i64, i8* }
%struct.TYPE_68__ = type { %struct.TYPE_67__* }
%struct.TYPE_67__ = type { i32, i32 }
%struct.TYPE_58__ = type { i64 }
%struct.TYPE_61__ = type { i32, i32*, i32, i32, %struct.TYPE_64__, i32, %struct.TYPE_51__, i32, i32, i64 }
%struct.TYPE_64__ = type { i64 }
%struct.TYPE_51__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_57__*, i32, %struct.TYPE_57__*, %struct.TYPE_57__*, i32, %struct.TYPE_66__*, %struct.TYPE_57__**, %struct.TYPE_57__**, %struct.TYPE_56__*, %struct.TYPE_57__**, i32, %struct.TYPE_57__, %struct.TYPE_57__* }
%struct.TYPE_66__ = type { i64 }
%struct.TYPE_56__ = type { i64, i64, i64, i64 }
%struct.TYPE_57__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i16, i64, i64, i64, i64, %struct.TYPE_65__, i64, i32, i64, i32, i64, i32, i64, i32, i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_65__ = type { i64 }

@DAC960_ReadCommand = common dso_local global i64 0, align 8
@DAC960_WriteCommand = common dso_local global i64 0, align 8
@DAC960_SenseKey_MediumError = common dso_local global i64 0, align 8
@DAC960_V2_NormalCompletion = common dso_local global i64 0, align 8
@DAC960_SenseKey_NotReady = common dso_local global i64 0, align 8
@DAC960_ReadRetryCommand = common dso_local global i64 0, align 8
@DAC960_WriteRetryCommand = common dso_local global i64 0, align 8
@DAC960_MonitoringCommand = common dso_local global i64 0, align 8
@DAC960_V2_GetControllerInfo = common dso_local global i64 0, align 8
@DAC960_V2_GetEvent = common dso_local global i64 0, align 8
@DAC960_V2_GetPhysicalDeviceInfoValid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Physical Device %d:%d No Longer Exists\0A\00", align 1
@DAC960_V2_MaxPhysicalDevices = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Physical Device %d:%d Now Exists%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c" - Allocation Failed\00", align 1
@DAC960_V2_Device_InvalidState = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Physical Device %d:%d is now %s\0A\00", align 1
@DAC960_V2_Device_Online = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"ONLINE\00", align 1
@DAC960_V2_Device_Rebuild = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"REBUILD\00", align 1
@DAC960_V2_Device_Missing = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@DAC960_V2_Device_Critical = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@DAC960_V2_Device_Dead = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@DAC960_V2_Device_SuspectedDead = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"SUSPECTED-DEAD\00", align 1
@DAC960_V2_Device_CommandedOffline = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"COMMANDED-OFFLINE\00", align 1
@DAC960_V2_Device_Standby = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"STANDBY\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.14 = private unnamed_addr constant [76 x i8] c"Physical Device %d:%d Errors: Parity = %d, Soft = %d, Hard = %d, Misc = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [88 x i8] c"Physical Device %d:%d Errors: Timeouts = %d, Retries = %d, Aborts = %d, Predicted = %d\0A\00", align 1
@DAC960_V2_GetLogicalDeviceInfoValid = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [48 x i8] c"Logical Drive %d (/dev/rd/c%dd%d) Now Exists%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"Logical Drive %d (/dev/rd/c%dd%d) is now %s\0A\00", align 1
@DAC960_V2_LogicalDevice_Online = common dso_local global i64 0, align 8
@DAC960_V2_LogicalDevice_Critical = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"OFFLINE\00", align 1
@.str.19 = private unnamed_addr constant [87 x i8] c"Logical Drive %d (/dev/rd/c%dd%d) Errors: Soft = %d, Failed = %d, Deferred Write = %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Consistency Check\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Rebuild\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Background Initialization\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Foreground Initialization\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"Data Migration\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"Patrol Operation\00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"Logical Drive %d (/dev/rd/c%dd%d) Background Initialization %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Completed\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@DAC960_MaxLogicalDrives = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [52 x i8] c"Logical Drive %d (/dev/rd/c%dd%d) No Longer Exists\0A\00", align 1
@DAC960_V2_SCSI_10_Passthru = common dso_local global i64 0, align 8
@DAC960_V2_IOCTL = common dso_local global i8* null, align 8
@jiffies = common dso_local global i64 0, align 8
@DAC960_HealthStatusMonitoringInterval = common dso_local global i64 0, align 8
@DAC960_ImmediateCommand = common dso_local global i64 0, align 8
@DAC960_QueuedCommand = common dso_local global i64 0, align 8
@DAC960_V2_AbormalCompletion = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_62__*)* @DAC960_V2_ProcessCompletedCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DAC960_V2_ProcessCompletedCommand(%struct.TYPE_62__* %0) #0 {
  %2 = alloca %struct.TYPE_62__*, align 8
  %3 = alloca %struct.TYPE_61__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_60__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_57__*, align 8
  %10 = alloca %struct.TYPE_57__*, align 8
  %11 = alloca %struct.TYPE_57__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_57__*, align 8
  %14 = alloca %struct.TYPE_57__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_57__*, align 8
  %18 = alloca %struct.TYPE_57__*, align 8
  %19 = alloca %struct.TYPE_57__*, align 8
  %20 = alloca i16, align 2
  %21 = alloca %struct.TYPE_57__*, align 8
  %22 = alloca %struct.TYPE_56__, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_57__*, align 8
  %26 = alloca %struct.TYPE_57__*, align 8
  %27 = alloca %struct.TYPE_57__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_59__*, align 8
  store %struct.TYPE_62__* %0, %struct.TYPE_62__** %2, align 8
  %30 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_61__*, %struct.TYPE_61__** %31, align 8
  store %struct.TYPE_61__* %32, %struct.TYPE_61__** %3, align 8
  %33 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %4, align 8
  %36 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %37, i32 0, i32 5
  store %struct.TYPE_60__* %38, %struct.TYPE_60__** %5, align 8
  %39 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %6, align 8
  %43 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @DAC960_ReadCommand, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %1
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @DAC960_WriteCommand, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %50, %1
  %55 = load i64, i64* @DAC960_SenseKey_MediumError, align 8
  %56 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_63__*, %struct.TYPE_63__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %59, i32 0, i32 0
  store i64 %55, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %54
  %65 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %66 = call i32 @DAC960_ProcessCompletedRequest(%struct.TYPE_62__* %65, i32 1)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %64
  br label %99

71:                                               ; preds = %54
  %72 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_63__*, %struct.TYPE_63__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DAC960_SenseKey_MediumError, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %82 = call i32 @DAC960_queue_partial_rw(%struct.TYPE_62__* %81)
  br label %1605

83:                                               ; preds = %71
  %84 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_63__*, %struct.TYPE_63__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DAC960_SenseKey_NotReady, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %94 = call i32 @DAC960_V2_ReadWriteError(%struct.TYPE_62__* %93)
  br label %95

95:                                               ; preds = %92, %83
  %96 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %97 = call i32 @DAC960_ProcessCompletedRequest(%struct.TYPE_62__* %96, i32 0)
  br label %98

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %70
  br label %1544

100:                                              ; preds = %50
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @DAC960_ReadRetryCommand, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = load i64, i64* @DAC960_WriteRetryCommand, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %104, %100
  store i32 1, i32* %8, align 4
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  store i32 0, i32* %8, align 4
  %113 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_63__*, %struct.TYPE_63__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DAC960_SenseKey_NotReady, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %123 = call i32 @DAC960_V2_ReadWriteError(%struct.TYPE_62__* %122)
  br label %124

124:                                              ; preds = %121, %112
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @DAC960_ProcessCompletedRequest(%struct.TYPE_62__* %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %132 = call i32 @DAC960_queue_partial_rw(%struct.TYPE_62__* %131)
  br label %1605

133:                                              ; preds = %125
  br label %1543

134:                                              ; preds = %104
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @DAC960_MonitoringCommand, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %1542

138:                                              ; preds = %134
  %139 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %139, i32 0, i32 9
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %1605

144:                                              ; preds = %138
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* @DAC960_V2_GetControllerInfo, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %200

148:                                              ; preds = %144
  %149 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %150, i32 0, i32 21
  %152 = load %struct.TYPE_57__*, %struct.TYPE_57__** %151, align 8
  store %struct.TYPE_57__* %152, %struct.TYPE_57__** %9, align 8
  %153 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %153, i32 0, i32 6
  %155 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %154, i32 0, i32 20
  store %struct.TYPE_57__* %155, %struct.TYPE_57__** %10, align 8
  %156 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %156, i32 0, i32 35
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %168, i32 0, i32 2
  store i32 1, i32* %169, align 8
  %170 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %171, i32 0, i32 3
  store i32 1, i32* %172, align 4
  %173 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %175, 0
  br i1 %176, label %192, label %177

177:                                              ; preds = %148
  %178 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sgt i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp sgt i64 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %190, 0
  br label %192

192:                                              ; preds = %187, %182, %177, %148
  %193 = phi i1 [ true, %182 ], [ true, %177 ], [ true, %148 ], [ %191, %187 ]
  %194 = zext i1 %193 to i32
  %195 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_57__*, %struct.TYPE_57__** %10, align 8
  %198 = load %struct.TYPE_57__*, %struct.TYPE_57__** %9, align 8
  %199 = call i32 @memcpy(%struct.TYPE_57__* %197, %struct.TYPE_57__* %198, i32 272)
  br label %1239

200:                                              ; preds = %144
  %201 = load i64, i64* %6, align 8
  %202 = load i64, i64* @DAC960_V2_GetEvent, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %221

204:                                              ; preds = %200
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %210 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %210, i32 0, i32 6
  %212 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %211, i32 0, i32 19
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @DAC960_V2_ReportEvent(%struct.TYPE_61__* %209, i32 %213)
  br label %215

215:                                              ; preds = %208, %204
  %216 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %216, i32 0, i32 6
  %218 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %1238

221:                                              ; preds = %200
  %222 = load i64, i64* %6, align 8
  %223 = load i64, i64* @DAC960_V2_GetPhysicalDeviceInfoValid, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %775

225:                                              ; preds = %221
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %775

229:                                              ; preds = %225
  %230 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %231, i32 0, i32 11
  %233 = load %struct.TYPE_57__*, %struct.TYPE_57__** %232, align 8
  store %struct.TYPE_57__* %233, %struct.TYPE_57__** %11, align 8
  %234 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %12, align 4
  %238 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %239, i32 0, i32 18
  %241 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %240, align 8
  %242 = load i32, i32* %12, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %241, i64 %243
  %245 = load %struct.TYPE_57__*, %struct.TYPE_57__** %244, align 8
  store %struct.TYPE_57__* %245, %struct.TYPE_57__** %13, align 8
  %246 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 15
  %249 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %248, align 8
  %250 = load i32, i32* %12, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %249, i64 %251
  %253 = load %struct.TYPE_57__*, %struct.TYPE_57__** %252, align 8
  store %struct.TYPE_57__* %253, %struct.TYPE_57__** %14, align 8
  br label %254

254:                                              ; preds = %377, %229
  %255 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %256 = icmp ne %struct.TYPE_57__* %255, null
  br i1 %256, label %257, label %305

257:                                              ; preds = %254
  %258 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = icmp sgt i64 %260, %263
  br i1 %264, label %303, label %265

265:                                              ; preds = %257
  %266 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %268, %271
  br i1 %272, label %273, label %301

273:                                              ; preds = %265
  %274 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %278 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %277, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = icmp sgt i64 %276, %279
  br i1 %280, label %299, label %281

281:                                              ; preds = %273
  %282 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %282, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %285, i32 0, i32 5
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %284, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %281
  %290 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %290, i32 0, i32 6
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %293, i32 0, i32 6
  %295 = load i64, i64* %294, align 8
  %296 = icmp sgt i64 %292, %295
  br label %297

297:                                              ; preds = %289, %281
  %298 = phi i1 [ false, %281 ], [ %296, %289 ]
  br label %299

299:                                              ; preds = %297, %273
  %300 = phi i1 [ true, %273 ], [ %298, %297 ]
  br label %301

301:                                              ; preds = %299, %265
  %302 = phi i1 [ false, %265 ], [ %300, %299 ]
  br label %303

303:                                              ; preds = %301, %257
  %304 = phi i1 [ true, %257 ], [ %302, %301 ]
  br label %305

305:                                              ; preds = %303, %254
  %306 = phi i1 [ false, %254 ], [ %304, %303 ]
  br i1 %306, label %307, label %410

307:                                              ; preds = %305
  %308 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %309 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %309, i32 0, i32 4
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %313, i32 0, i32 5
  %315 = load i64, i64* %314, align 8
  %316 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_61__* %308, i32 %312, i64 %315)
  %317 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %318, i32 0, i32 18
  %320 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %319, align 8
  %321 = load i32, i32* %12, align 4
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %320, i64 %322
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %323, align 8
  %324 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %324, i32 0, i32 6
  %326 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %325, i32 0, i32 15
  %327 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %326, align 8
  %328 = load i32, i32* %12, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %327, i64 %329
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %330, align 8
  %331 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %332 = call i32 @kfree(%struct.TYPE_57__* %331)
  %333 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %334 = call i32 @kfree(%struct.TYPE_57__* %333)
  %335 = load i32, i32* %12, align 4
  store i32 %335, i32* %15, align 4
  br label %336

336:                                              ; preds = %374, %307
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %339 = sub nsw i32 %338, 1
  %340 = icmp ult i32 %337, %339
  br i1 %340, label %341, label %377

341:                                              ; preds = %336
  %342 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %342, i32 0, i32 6
  %344 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %343, i32 0, i32 18
  %345 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %344, align 8
  %346 = load i32, i32* %15, align 4
  %347 = add i32 %346, 1
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %345, i64 %348
  %350 = load %struct.TYPE_57__*, %struct.TYPE_57__** %349, align 8
  %351 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %351, i32 0, i32 6
  %353 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %352, i32 0, i32 18
  %354 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %353, align 8
  %355 = load i32, i32* %15, align 4
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %354, i64 %356
  store %struct.TYPE_57__* %350, %struct.TYPE_57__** %357, align 8
  %358 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %358, i32 0, i32 6
  %360 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %359, i32 0, i32 15
  %361 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %360, align 8
  %362 = load i32, i32* %15, align 4
  %363 = add i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %361, i64 %364
  %366 = load %struct.TYPE_57__*, %struct.TYPE_57__** %365, align 8
  %367 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %368, i32 0, i32 15
  %370 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %369, align 8
  %371 = load i32, i32* %15, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %370, i64 %372
  store %struct.TYPE_57__* %366, %struct.TYPE_57__** %373, align 8
  br label %374

374:                                              ; preds = %341
  %375 = load i32, i32* %15, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %15, align 4
  br label %336

377:                                              ; preds = %336
  %378 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %379 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %378, i32 0, i32 6
  %380 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %379, i32 0, i32 18
  %381 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %380, align 8
  %382 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %381, i64 %384
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %385, align 8
  %386 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %386, i32 0, i32 6
  %388 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %387, i32 0, i32 15
  %389 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %388, align 8
  %390 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %389, i64 %392
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %393, align 8
  %394 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %394, i32 0, i32 6
  %396 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %395, i32 0, i32 18
  %397 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %396, align 8
  %398 = load i32, i32* %12, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %397, i64 %399
  %401 = load %struct.TYPE_57__*, %struct.TYPE_57__** %400, align 8
  store %struct.TYPE_57__* %401, %struct.TYPE_57__** %13, align 8
  %402 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %402, i32 0, i32 6
  %404 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %403, i32 0, i32 15
  %405 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %404, align 8
  %406 = load i32, i32* %12, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %405, i64 %407
  %409 = load %struct.TYPE_57__*, %struct.TYPE_57__** %408, align 8
  store %struct.TYPE_57__* %409, %struct.TYPE_57__** %14, align 8
  br label %254

410:                                              ; preds = %305
  %411 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %412 = icmp eq %struct.TYPE_57__* %411, null
  br i1 %412, label %437, label %413

413:                                              ; preds = %410
  %414 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %414, i32 0, i32 4
  %416 = load i64, i64* %415, align 8
  %417 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %418 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %417, i32 0, i32 4
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %416, %419
  br i1 %420, label %437, label %421

421:                                              ; preds = %413
  %422 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %423 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %422, i32 0, i32 5
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %425, i32 0, i32 5
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %424, %427
  br i1 %428, label %437, label %429

429:                                              ; preds = %421
  %430 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %430, i32 0, i32 6
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %434 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %432, %435
  br i1 %436, label %437, label %541

437:                                              ; preds = %429, %421, %413, %410
  %438 = load i32, i32* @GFP_ATOMIC, align 4
  %439 = call %struct.TYPE_57__* @kmalloc(i32 272, i32 %438)
  store %struct.TYPE_57__* %439, %struct.TYPE_57__** %13, align 8
  %440 = load i32, i32* @GFP_ATOMIC, align 4
  %441 = call %struct.TYPE_57__* @kmalloc(i32 272, i32 %440)
  store %struct.TYPE_57__* %441, %struct.TYPE_57__** %14, align 8
  %442 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %443 = icmp eq %struct.TYPE_57__* %442, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %437
  %445 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %446 = icmp eq %struct.TYPE_57__* %445, null
  br i1 %446, label %447, label %452

447:                                              ; preds = %444, %437
  %448 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %449 = call i32 @kfree(%struct.TYPE_57__* %448)
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %14, align 8
  %450 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %451 = call i32 @kfree(%struct.TYPE_57__* %450)
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %13, align 8
  br label %452

452:                                              ; preds = %447, %444
  %453 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %454 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %455 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = trunc i64 %456 to i32
  %458 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %459 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %458, i32 0, i32 5
  %460 = load i64, i64* %459, align 8
  %461 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %462 = icmp ne %struct.TYPE_57__* %461, null
  %463 = zext i1 %462 to i64
  %464 = select i1 %462, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)
  %465 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_61__* %453, i32 %457, i64 %460, i8* %464)
  %466 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %467 = icmp ne %struct.TYPE_57__* %466, null
  br i1 %467, label %468, label %540

468:                                              ; preds = %452
  %469 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %470 = call i32 @memset(%struct.TYPE_57__* %469, i32 0, i32 272)
  %471 = load i64, i64* @DAC960_V2_Device_InvalidState, align 8
  %472 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %473 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %472, i32 0, i32 7
  store i64 %471, i64* %473, align 8
  %474 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %475 = call i32 @memset(%struct.TYPE_57__* %474, i32 0, i32 272)
  %476 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %477 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %476, i32 0, i32 8
  store i32 31, i32* %477, align 8
  %478 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %479 = sub nsw i32 %478, 1
  store i32 %479, i32* %15, align 4
  br label %480

480:                                              ; preds = %517, %468
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* %12, align 4
  %483 = icmp ugt i32 %481, %482
  br i1 %483, label %484, label %520

484:                                              ; preds = %480
  %485 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %485, i32 0, i32 6
  %487 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %486, i32 0, i32 18
  %488 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %487, align 8
  %489 = load i32, i32* %15, align 4
  %490 = sub i32 %489, 1
  %491 = zext i32 %490 to i64
  %492 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %488, i64 %491
  %493 = load %struct.TYPE_57__*, %struct.TYPE_57__** %492, align 8
  %494 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %494, i32 0, i32 6
  %496 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %495, i32 0, i32 18
  %497 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %496, align 8
  %498 = load i32, i32* %15, align 4
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %497, i64 %499
  store %struct.TYPE_57__* %493, %struct.TYPE_57__** %500, align 8
  %501 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %501, i32 0, i32 6
  %503 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %502, i32 0, i32 15
  %504 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %503, align 8
  %505 = load i32, i32* %15, align 4
  %506 = sub i32 %505, 1
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %504, i64 %507
  %509 = load %struct.TYPE_57__*, %struct.TYPE_57__** %508, align 8
  %510 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %510, i32 0, i32 6
  %512 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %511, i32 0, i32 15
  %513 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %512, align 8
  %514 = load i32, i32* %15, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %513, i64 %515
  store %struct.TYPE_57__* %509, %struct.TYPE_57__** %516, align 8
  br label %517

517:                                              ; preds = %484
  %518 = load i32, i32* %15, align 4
  %519 = add i32 %518, -1
  store i32 %519, i32* %15, align 4
  br label %480

520:                                              ; preds = %480
  %521 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %522 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %523 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %522, i32 0, i32 6
  %524 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %523, i32 0, i32 18
  %525 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %524, align 8
  %526 = load i32, i32* %12, align 4
  %527 = zext i32 %526 to i64
  %528 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %525, i64 %527
  store %struct.TYPE_57__* %521, %struct.TYPE_57__** %528, align 8
  %529 = load %struct.TYPE_57__*, %struct.TYPE_57__** %14, align 8
  %530 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %530, i32 0, i32 6
  %532 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %531, i32 0, i32 15
  %533 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %532, align 8
  %534 = load i32, i32* %12, align 4
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %533, i64 %535
  store %struct.TYPE_57__* %529, %struct.TYPE_57__** %536, align 8
  %537 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %537, i32 0, i32 6
  %539 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %538, i32 0, i32 6
  store i32 1, i32* %539, align 8
  br label %540

540:                                              ; preds = %520, %452
  br label %541

541:                                              ; preds = %540, %429
  %542 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %543 = icmp ne %struct.TYPE_57__* %542, null
  br i1 %543, label %544, label %765

544:                                              ; preds = %541
  %545 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %545, i32 0, i32 7
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %549 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %548, i32 0, i32 7
  %550 = load i64, i64* %549, align 8
  %551 = icmp ne i64 %547, %550
  br i1 %551, label %552, label %632

552:                                              ; preds = %544
  %553 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %554 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %555 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %554, i32 0, i32 4
  %556 = load i64, i64* %555, align 8
  %557 = trunc i64 %556 to i32
  %558 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %559 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %558, i32 0, i32 5
  %560 = load i64, i64* %559, align 8
  %561 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %562 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %561, i32 0, i32 7
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* @DAC960_V2_Device_Online, align 8
  %565 = icmp eq i64 %563, %564
  br i1 %565, label %566, label %567

566:                                              ; preds = %552
  br label %629

567:                                              ; preds = %552
  %568 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %569 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %568, i32 0, i32 7
  %570 = load i64, i64* %569, align 8
  %571 = load i64, i64* @DAC960_V2_Device_Rebuild, align 8
  %572 = icmp eq i64 %570, %571
  br i1 %572, label %573, label %574

573:                                              ; preds = %567
  br label %627

574:                                              ; preds = %567
  %575 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %576 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %575, i32 0, i32 7
  %577 = load i64, i64* %576, align 8
  %578 = load i64, i64* @DAC960_V2_Device_Missing, align 8
  %579 = icmp eq i64 %577, %578
  br i1 %579, label %580, label %581

580:                                              ; preds = %574
  br label %625

581:                                              ; preds = %574
  %582 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %583 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %582, i32 0, i32 7
  %584 = load i64, i64* %583, align 8
  %585 = load i64, i64* @DAC960_V2_Device_Critical, align 8
  %586 = icmp eq i64 %584, %585
  br i1 %586, label %587, label %588

587:                                              ; preds = %581
  br label %623

588:                                              ; preds = %581
  %589 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %590 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %589, i32 0, i32 7
  %591 = load i64, i64* %590, align 8
  %592 = load i64, i64* @DAC960_V2_Device_Dead, align 8
  %593 = icmp eq i64 %591, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %588
  br label %621

595:                                              ; preds = %588
  %596 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %597 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %596, i32 0, i32 7
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @DAC960_V2_Device_SuspectedDead, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %602

601:                                              ; preds = %595
  br label %619

602:                                              ; preds = %595
  %603 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %604 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %603, i32 0, i32 7
  %605 = load i64, i64* %604, align 8
  %606 = load i64, i64* @DAC960_V2_Device_CommandedOffline, align 8
  %607 = icmp eq i64 %605, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %602
  br label %617

609:                                              ; preds = %602
  %610 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %611 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %610, i32 0, i32 7
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @DAC960_V2_Device_Standby, align 8
  %614 = icmp eq i64 %612, %613
  %615 = zext i1 %614 to i64
  %616 = select i1 %614, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)
  br label %617

617:                                              ; preds = %609, %608
  %618 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), %608 ], [ %616, %609 ]
  br label %619

619:                                              ; preds = %617, %601
  %620 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %601 ], [ %618, %617 ]
  br label %621

621:                                              ; preds = %619, %594
  %622 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %594 ], [ %620, %619 ]
  br label %623

623:                                              ; preds = %621, %587
  %624 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), %587 ], [ %622, %621 ]
  br label %625

625:                                              ; preds = %623, %580
  %626 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), %580 ], [ %624, %623 ]
  br label %627

627:                                              ; preds = %625, %573
  %628 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %573 ], [ %626, %625 ]
  br label %629

629:                                              ; preds = %627, %566
  %630 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %566 ], [ %628, %627 ]
  %631 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_61__* %553, i32 %557, i64 %560, i8* %630)
  br label %632

632:                                              ; preds = %629, %544
  %633 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %634 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %633, i32 0, i32 34
  %635 = load i32, i32* %634, align 4
  %636 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %637 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %636, i32 0, i32 34
  %638 = load i32, i32* %637, align 4
  %639 = icmp ne i32 %635, %638
  br i1 %639, label %696, label %640

640:                                              ; preds = %632
  %641 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %642 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %641, i32 0, i32 9
  %643 = load i64, i64* %642, align 8
  %644 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %645 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %644, i32 0, i32 9
  %646 = load i64, i64* %645, align 8
  %647 = icmp ne i64 %643, %646
  br i1 %647, label %696, label %648

648:                                              ; preds = %640
  %649 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %650 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %649, i32 0, i32 10
  %651 = load i64, i64* %650, align 8
  %652 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %653 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %652, i32 0, i32 10
  %654 = load i64, i64* %653, align 8
  %655 = icmp ne i64 %651, %654
  br i1 %655, label %696, label %656

656:                                              ; preds = %648
  %657 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %658 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %657, i32 0, i32 11
  %659 = load i64, i64* %658, align 8
  %660 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %661 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %660, i32 0, i32 11
  %662 = load i64, i64* %661, align 8
  %663 = icmp ne i64 %659, %662
  br i1 %663, label %696, label %664

664:                                              ; preds = %656
  %665 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %666 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %665, i32 0, i32 33
  %667 = load i32, i32* %666, align 8
  %668 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %669 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %668, i32 0, i32 33
  %670 = load i32, i32* %669, align 8
  %671 = icmp ne i32 %667, %670
  br i1 %671, label %696, label %672

672:                                              ; preds = %664
  %673 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %674 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %673, i32 0, i32 12
  %675 = load i64, i64* %674, align 8
  %676 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %677 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %676, i32 0, i32 12
  %678 = load i64, i64* %677, align 8
  %679 = icmp ne i64 %675, %678
  br i1 %679, label %696, label %680

680:                                              ; preds = %672
  %681 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %682 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %681, i32 0, i32 13
  %683 = load i64, i64* %682, align 8
  %684 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %685 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %684, i32 0, i32 13
  %686 = load i64, i64* %685, align 8
  %687 = icmp ne i64 %683, %686
  br i1 %687, label %696, label %688

688:                                              ; preds = %680
  %689 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %690 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %689, i32 0, i32 14
  %691 = load i64, i64* %690, align 8
  %692 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %693 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %692, i32 0, i32 14
  %694 = load i64, i64* %693, align 8
  %695 = icmp ne i64 %691, %694
  br i1 %695, label %696, label %739

696:                                              ; preds = %688, %680, %672, %664, %656, %648, %640, %632
  %697 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %698 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %699 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %698, i32 0, i32 4
  %700 = load i64, i64* %699, align 8
  %701 = trunc i64 %700 to i32
  %702 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %703 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %702, i32 0, i32 5
  %704 = load i64, i64* %703, align 8
  %705 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %706 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %705, i32 0, i32 34
  %707 = load i32, i32* %706, align 4
  %708 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %709 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %708, i32 0, i32 9
  %710 = load i64, i64* %709, align 8
  %711 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %712 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %711, i32 0, i32 10
  %713 = load i64, i64* %712, align 8
  %714 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %715 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %714, i32 0, i32 11
  %716 = load i64, i64* %715, align 8
  %717 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_61__* %697, i32 %701, i64 %704, i32 %707, i64 %710, i64 %713, i64 %716)
  %718 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %719 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %720 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %719, i32 0, i32 4
  %721 = load i64, i64* %720, align 8
  %722 = trunc i64 %721 to i32
  %723 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %724 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %723, i32 0, i32 5
  %725 = load i64, i64* %724, align 8
  %726 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %727 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %726, i32 0, i32 33
  %728 = load i32, i32* %727, align 8
  %729 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %730 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %729, i32 0, i32 12
  %731 = load i64, i64* %730, align 8
  %732 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %733 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %732, i32 0, i32 13
  %734 = load i64, i64* %733, align 8
  %735 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %736 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %735, i32 0, i32 14
  %737 = load i64, i64* %736, align 8
  %738 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_61__* %718, i32 %722, i64 %725, i32 %728, i64 %731, i64 %734, i64 %737)
  br label %739

739:                                              ; preds = %696, %688
  %740 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %741 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %740, i32 0, i32 7
  %742 = load i64, i64* %741, align 8
  %743 = load i64, i64* @DAC960_V2_Device_Dead, align 8
  %744 = icmp eq i64 %742, %743
  br i1 %744, label %751, label %745

745:                                              ; preds = %739
  %746 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %747 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %746, i32 0, i32 7
  %748 = load i64, i64* %747, align 8
  %749 = load i64, i64* @DAC960_V2_Device_InvalidState, align 8
  %750 = icmp eq i64 %748, %749
  br i1 %750, label %751, label %761

751:                                              ; preds = %745, %739
  %752 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %753 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %752, i32 0, i32 7
  %754 = load i64, i64* %753, align 8
  %755 = load i64, i64* @DAC960_V2_Device_Dead, align 8
  %756 = icmp ne i64 %754, %755
  br i1 %756, label %757, label %761

757:                                              ; preds = %751
  %758 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %759 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %758, i32 0, i32 6
  %760 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %759, i32 0, i32 6
  store i32 1, i32* %760, align 8
  br label %761

761:                                              ; preds = %757, %751, %745
  %762 = load %struct.TYPE_57__*, %struct.TYPE_57__** %13, align 8
  %763 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %764 = call i32 @memcpy(%struct.TYPE_57__* %762, %struct.TYPE_57__* %763, i32 272)
  br label %765

765:                                              ; preds = %761, %541
  %766 = load %struct.TYPE_57__*, %struct.TYPE_57__** %11, align 8
  %767 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %766, i32 0, i32 6
  %768 = load i64, i64* %767, align 8
  %769 = add nsw i64 %768, 1
  store i64 %769, i64* %767, align 8
  %770 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %771 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %770, i32 0, i32 6
  %772 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %771, i32 0, i32 5
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, 1
  store i32 %774, i32* %772, align 4
  br label %1237

775:                                              ; preds = %225, %221
  %776 = load i64, i64* %6, align 8
  %777 = load i64, i64* @DAC960_V2_GetPhysicalDeviceInfoValid, align 8
  %778 = icmp eq i64 %776, %777
  br i1 %778, label %779, label %843

779:                                              ; preds = %775
  %780 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %781 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %780, i32 0, i32 6
  %782 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %781, i32 0, i32 5
  %783 = load i32, i32* %782, align 4
  store i32 %783, i32* %16, align 4
  br label %784

784:                                              ; preds = %836, %779
  %785 = load i32, i32* %16, align 4
  %786 = load i32, i32* @DAC960_V2_MaxPhysicalDevices, align 4
  %787 = icmp ult i32 %785, %786
  br i1 %787, label %788, label %839

788:                                              ; preds = %784
  %789 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %790 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %789, i32 0, i32 6
  %791 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %790, i32 0, i32 18
  %792 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %791, align 8
  %793 = load i32, i32* %16, align 4
  %794 = zext i32 %793 to i64
  %795 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %792, i64 %794
  %796 = load %struct.TYPE_57__*, %struct.TYPE_57__** %795, align 8
  store %struct.TYPE_57__* %796, %struct.TYPE_57__** %17, align 8
  %797 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %798 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %797, i32 0, i32 6
  %799 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %798, i32 0, i32 15
  %800 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %799, align 8
  %801 = load i32, i32* %16, align 4
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %800, i64 %802
  %804 = load %struct.TYPE_57__*, %struct.TYPE_57__** %803, align 8
  store %struct.TYPE_57__* %804, %struct.TYPE_57__** %18, align 8
  %805 = load %struct.TYPE_57__*, %struct.TYPE_57__** %17, align 8
  %806 = icmp eq %struct.TYPE_57__* %805, null
  br i1 %806, label %807, label %808

807:                                              ; preds = %788
  br label %839

808:                                              ; preds = %788
  %809 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %810 = load %struct.TYPE_57__*, %struct.TYPE_57__** %17, align 8
  %811 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %810, i32 0, i32 4
  %812 = load i64, i64* %811, align 8
  %813 = trunc i64 %812 to i32
  %814 = load %struct.TYPE_57__*, %struct.TYPE_57__** %17, align 8
  %815 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %814, i32 0, i32 5
  %816 = load i64, i64* %815, align 8
  %817 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_61__* %809, i32 %813, i64 %816)
  %818 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %819 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %818, i32 0, i32 6
  %820 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %819, i32 0, i32 18
  %821 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %820, align 8
  %822 = load i32, i32* %16, align 4
  %823 = zext i32 %822 to i64
  %824 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %821, i64 %823
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %824, align 8
  %825 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %826 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %825, i32 0, i32 6
  %827 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %826, i32 0, i32 15
  %828 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %827, align 8
  %829 = load i32, i32* %16, align 4
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %828, i64 %830
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %831, align 8
  %832 = load %struct.TYPE_57__*, %struct.TYPE_57__** %17, align 8
  %833 = call i32 @kfree(%struct.TYPE_57__* %832)
  %834 = load %struct.TYPE_57__*, %struct.TYPE_57__** %18, align 8
  %835 = call i32 @kfree(%struct.TYPE_57__* %834)
  br label %836

836:                                              ; preds = %808
  %837 = load i32, i32* %16, align 4
  %838 = add i32 %837, 1
  store i32 %838, i32* %16, align 4
  br label %784

839:                                              ; preds = %807, %784
  %840 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %841 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %840, i32 0, i32 6
  %842 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %841, i32 0, i32 1
  store i32 0, i32* %842, align 4
  br label %1236

843:                                              ; preds = %775
  %844 = load i64, i64* %6, align 8
  %845 = load i64, i64* @DAC960_V2_GetLogicalDeviceInfoValid, align 8
  %846 = icmp eq i64 %844, %845
  br i1 %846, label %847, label %1133

847:                                              ; preds = %843
  %848 = load i64, i64* %7, align 8
  %849 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %850 = icmp eq i64 %848, %849
  br i1 %850, label %851, label %1133

851:                                              ; preds = %847
  %852 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %853 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %852, i32 0, i32 6
  %854 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %853, i32 0, i32 9
  %855 = load %struct.TYPE_57__*, %struct.TYPE_57__** %854, align 8
  store %struct.TYPE_57__* %855, %struct.TYPE_57__** %19, align 8
  %856 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %857 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %856, i32 0, i32 15
  %858 = load i16, i16* %857, align 8
  store i16 %858, i16* %20, align 2
  %859 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %860 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %859, i32 0, i32 6
  %861 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %860, i32 0, i32 16
  %862 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %861, align 8
  %863 = load i16, i16* %20, align 2
  %864 = zext i16 %863 to i64
  %865 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %862, i64 %864
  %866 = load %struct.TYPE_57__*, %struct.TYPE_57__** %865, align 8
  store %struct.TYPE_57__* %866, %struct.TYPE_57__** %21, align 8
  %867 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %868 = icmp eq %struct.TYPE_57__* %867, null
  br i1 %868, label %869, label %924

869:                                              ; preds = %851
  %870 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %22, i32 0, i32 3
  store i64 0, i64* %870, align 8
  %871 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %872 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %871, i32 0, i32 4
  %873 = load i64, i64* %872, align 8
  %874 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %22, i32 0, i32 0
  store i64 %873, i64* %874, align 8
  %875 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %876 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %875, i32 0, i32 5
  %877 = load i64, i64* %876, align 8
  %878 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %22, i32 0, i32 1
  store i64 %877, i64* %878, align 8
  %879 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %880 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %879, i32 0, i32 6
  %881 = load i64, i64* %880, align 8
  %882 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %22, i32 0, i32 2
  store i64 %881, i64* %882, align 8
  %883 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %884 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %883, i32 0, i32 6
  %885 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %884, i32 0, i32 17
  %886 = load %struct.TYPE_56__*, %struct.TYPE_56__** %885, align 8
  %887 = load i16, i16* %20, align 2
  %888 = zext i16 %887 to i64
  %889 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %886, i64 %888
  %890 = bitcast %struct.TYPE_56__* %889 to i8*
  %891 = bitcast %struct.TYPE_56__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %890, i8* align 8 %891, i64 32, i1 false)
  %892 = load i32, i32* @GFP_ATOMIC, align 4
  %893 = call %struct.TYPE_57__* @kmalloc(i32 272, i32 %892)
  store %struct.TYPE_57__* %893, %struct.TYPE_57__** %21, align 8
  %894 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %895 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %896 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %895, i32 0, i32 6
  %897 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %896, i32 0, i32 16
  %898 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %897, align 8
  %899 = load i16, i16* %20, align 2
  %900 = zext i16 %899 to i64
  %901 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %898, i64 %900
  store %struct.TYPE_57__* %894, %struct.TYPE_57__** %901, align 8
  %902 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %903 = load i16, i16* %20, align 2
  %904 = zext i16 %903 to i32
  %905 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %906 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %905, i32 0, i32 7
  %907 = load i32, i32* %906, align 8
  %908 = sext i32 %907 to i64
  %909 = load i16, i16* %20, align 2
  %910 = zext i16 %909 to i32
  %911 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %912 = icmp ne %struct.TYPE_57__* %911, null
  %913 = zext i1 %912 to i64
  %914 = select i1 %912, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)
  %915 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.16, i64 0, i64 0), %struct.TYPE_61__* %902, i32 %904, i64 %908, i32 %910, i8* %914)
  %916 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %917 = icmp ne %struct.TYPE_57__* %916, null
  br i1 %917, label %918, label %923

918:                                              ; preds = %869
  %919 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %920 = call i32 @memset(%struct.TYPE_57__* %919, i32 0, i32 272)
  %921 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %922 = call i32 @DAC960_ComputeGenericDiskInfo(%struct.TYPE_61__* %921)
  br label %923

923:                                              ; preds = %918, %869
  br label %924

924:                                              ; preds = %923, %851
  %925 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %926 = icmp ne %struct.TYPE_57__* %925, null
  br i1 %926, label %927, label %1121

927:                                              ; preds = %924
  %928 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %929 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %928, i32 0, i32 16
  %930 = load i64, i64* %929, align 8
  store i64 %930, i64* %23, align 8
  %931 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %932 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %931, i32 0, i32 17
  %933 = load i64, i64* %932, align 8
  %934 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %935 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %934, i32 0, i32 17
  %936 = load i64, i64* %935, align 8
  %937 = icmp ne i64 %933, %936
  br i1 %937, label %938, label %965

938:                                              ; preds = %927
  %939 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %940 = load i16, i16* %20, align 2
  %941 = zext i16 %940 to i32
  %942 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %943 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %942, i32 0, i32 7
  %944 = load i32, i32* %943, align 8
  %945 = sext i32 %944 to i64
  %946 = load i16, i16* %20, align 2
  %947 = zext i16 %946 to i32
  %948 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %949 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %948, i32 0, i32 17
  %950 = load i64, i64* %949, align 8
  %951 = load i64, i64* @DAC960_V2_LogicalDevice_Online, align 8
  %952 = icmp eq i64 %950, %951
  br i1 %952, label %953, label %954

953:                                              ; preds = %938
  br label %962

954:                                              ; preds = %938
  %955 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %956 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %955, i32 0, i32 17
  %957 = load i64, i64* %956, align 8
  %958 = load i64, i64* @DAC960_V2_LogicalDevice_Critical, align 8
  %959 = icmp eq i64 %957, %958
  %960 = zext i1 %959 to i64
  %961 = select i1 %959, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0)
  br label %962

962:                                              ; preds = %954, %953
  %963 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %953 ], [ %961, %954 ]
  %964 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), %struct.TYPE_61__* %939, i32 %941, i64 %945, i32 %947, i8* %963)
  br label %965

965:                                              ; preds = %962, %927
  %966 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %967 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %966, i32 0, i32 9
  %968 = load i64, i64* %967, align 8
  %969 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %970 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %969, i32 0, i32 9
  %971 = load i64, i64* %970, align 8
  %972 = icmp ne i64 %968, %971
  br i1 %972, label %989, label %973

973:                                              ; preds = %965
  %974 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %975 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %974, i32 0, i32 18
  %976 = load i64, i64* %975, align 8
  %977 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %978 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %977, i32 0, i32 18
  %979 = load i64, i64* %978, align 8
  %980 = icmp ne i64 %976, %979
  br i1 %980, label %989, label %981

981:                                              ; preds = %973
  %982 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %983 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %982, i32 0, i32 19
  %984 = load i64, i64* %983, align 8
  %985 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %986 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %985, i32 0, i32 19
  %987 = load i64, i64* %986, align 8
  %988 = icmp ne i64 %984, %987
  br i1 %988, label %989, label %1009

989:                                              ; preds = %981, %973, %965
  %990 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %991 = load i16, i16* %20, align 2
  %992 = zext i16 %991 to i32
  %993 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %994 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %993, i32 0, i32 7
  %995 = load i32, i32* %994, align 8
  %996 = sext i32 %995 to i64
  %997 = load i16, i16* %20, align 2
  %998 = zext i16 %997 to i32
  %999 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1000 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %999, i32 0, i32 9
  %1001 = load i64, i64* %1000, align 8
  %1002 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1003 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1002, i32 0, i32 18
  %1004 = load i64, i64* %1003, align 8
  %1005 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1006 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1005, i32 0, i32 19
  %1007 = load i64, i64* %1006, align 8
  %1008 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_61__* %990, i32 %992, i64 %996, i32 %998, i64 %1001, i64 %1004, i64 %1007)
  br label %1009

1009:                                             ; preds = %989, %981
  %1010 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1011 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1010, i32 0, i32 32
  %1012 = load i64, i64* %1011, align 8
  %1013 = icmp ne i64 %1012, 0
  br i1 %1013, label %1014, label %1022

1014:                                             ; preds = %1009
  %1015 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1016 = load i16, i16* %20, align 2
  %1017 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1018 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1017, i32 0, i32 31
  %1019 = load i32, i32* %1018, align 8
  %1020 = load i64, i64* %23, align 8
  %1021 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1015, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i16 zeroext %1016, i32 %1019, i64 %1020)
  br label %1092

1022:                                             ; preds = %1009
  %1023 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1024 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1023, i32 0, i32 30
  %1025 = load i64, i64* %1024, align 8
  %1026 = icmp ne i64 %1025, 0
  br i1 %1026, label %1027, label %1035

1027:                                             ; preds = %1022
  %1028 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1029 = load i16, i16* %20, align 2
  %1030 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1031 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1030, i32 0, i32 29
  %1032 = load i32, i32* %1031, align 4
  %1033 = load i64, i64* %23, align 8
  %1034 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1028, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i16 zeroext %1029, i32 %1032, i64 %1033)
  br label %1091

1035:                                             ; preds = %1022
  %1036 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1037 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1036, i32 0, i32 21
  %1038 = load i64, i64* %1037, align 8
  %1039 = icmp ne i64 %1038, 0
  br i1 %1039, label %1040, label %1048

1040:                                             ; preds = %1035
  %1041 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1042 = load i16, i16* %20, align 2
  %1043 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1044 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1043, i32 0, i32 28
  %1045 = load i32, i32* %1044, align 8
  %1046 = load i64, i64* %23, align 8
  %1047 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1041, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i16 zeroext %1042, i32 %1045, i64 %1046)
  br label %1090

1048:                                             ; preds = %1035
  %1049 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1050 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1049, i32 0, i32 27
  %1051 = load i64, i64* %1050, align 8
  %1052 = icmp ne i64 %1051, 0
  br i1 %1052, label %1053, label %1061

1053:                                             ; preds = %1048
  %1054 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1055 = load i16, i16* %20, align 2
  %1056 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1057 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1056, i32 0, i32 26
  %1058 = load i32, i32* %1057, align 8
  %1059 = load i64, i64* %23, align 8
  %1060 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1054, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i16 zeroext %1055, i32 %1058, i64 %1059)
  br label %1089

1061:                                             ; preds = %1048
  %1062 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1063 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1062, i32 0, i32 25
  %1064 = load i64, i64* %1063, align 8
  %1065 = icmp ne i64 %1064, 0
  br i1 %1065, label %1066, label %1074

1066:                                             ; preds = %1061
  %1067 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1068 = load i16, i16* %20, align 2
  %1069 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1070 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1069, i32 0, i32 24
  %1071 = load i32, i32* %1070, align 8
  %1072 = load i64, i64* %23, align 8
  %1073 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1067, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i16 zeroext %1068, i32 %1071, i64 %1072)
  br label %1088

1074:                                             ; preds = %1061
  %1075 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1076 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1075, i32 0, i32 23
  %1077 = load i64, i64* %1076, align 8
  %1078 = icmp ne i64 %1077, 0
  br i1 %1078, label %1079, label %1087

1079:                                             ; preds = %1074
  %1080 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1081 = load i16, i16* %20, align 2
  %1082 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1083 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1082, i32 0, i32 22
  %1084 = load i32, i32* %1083, align 8
  %1085 = load i64, i64* %23, align 8
  %1086 = call i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__* %1080, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i16 zeroext %1081, i32 %1084, i64 %1085)
  br label %1087

1087:                                             ; preds = %1079, %1074
  br label %1088

1088:                                             ; preds = %1087, %1066
  br label %1089

1089:                                             ; preds = %1088, %1053
  br label %1090

1090:                                             ; preds = %1089, %1040
  br label %1091

1091:                                             ; preds = %1090, %1027
  br label %1092

1092:                                             ; preds = %1091, %1014
  %1093 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %1094 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1093, i32 0, i32 21
  %1095 = load i64, i64* %1094, align 8
  %1096 = icmp ne i64 %1095, 0
  br i1 %1096, label %1097, label %1117

1097:                                             ; preds = %1092
  %1098 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1099 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1098, i32 0, i32 21
  %1100 = load i64, i64* %1099, align 8
  %1101 = icmp ne i64 %1100, 0
  br i1 %1101, label %1117, label %1102

1102:                                             ; preds = %1097
  %1103 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1104 = load i16, i16* %20, align 2
  %1105 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1106 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1105, i32 0, i32 7
  %1107 = load i32, i32* %1106, align 8
  %1108 = load i16, i16* %20, align 2
  %1109 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1110 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1109, i32 0, i32 20
  %1111 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %1110, i32 0, i32 0
  %1112 = load i64, i64* %1111, align 8
  %1113 = icmp ne i64 %1112, 0
  %1114 = zext i1 %1113 to i64
  %1115 = select i1 %1113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0)
  %1116 = call i32 @DAC960_Progress(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.26, i64 0, i64 0), %struct.TYPE_61__* %1103, i16 zeroext %1104, i32 %1107, i16 zeroext %1108, i8* %1115)
  br label %1117

1117:                                             ; preds = %1102, %1097, %1092
  %1118 = load %struct.TYPE_57__*, %struct.TYPE_57__** %21, align 8
  %1119 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1120 = call i32 @memcpy(%struct.TYPE_57__* %1118, %struct.TYPE_57__* %1119, i32 272)
  br label %1121

1121:                                             ; preds = %1117, %924
  %1122 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1123 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1122, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1123, i32 0, i32 7
  %1125 = load i32*, i32** %1124, align 8
  %1126 = load i16, i16* %20, align 2
  %1127 = zext i16 %1126 to i64
  %1128 = getelementptr inbounds i32, i32* %1125, i64 %1127
  store i32 1, i32* %1128, align 4
  %1129 = load %struct.TYPE_57__*, %struct.TYPE_57__** %19, align 8
  %1130 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1129, i32 0, i32 15
  %1131 = load i16, i16* %1130, align 8
  %1132 = add i16 %1131, 1
  store i16 %1132, i16* %1130, align 8
  br label %1235

1133:                                             ; preds = %847, %843
  %1134 = load i64, i64* %6, align 8
  %1135 = load i64, i64* @DAC960_V2_GetLogicalDeviceInfoValid, align 8
  %1136 = icmp eq i64 %1134, %1135
  br i1 %1136, label %1137, label %1197

1137:                                             ; preds = %1133
  store i32 0, i32* %24, align 4
  br label %1138

1138:                                             ; preds = %1190, %1137
  %1139 = load i32, i32* %24, align 4
  %1140 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %1141 = icmp slt i32 %1139, %1140
  br i1 %1141, label %1142, label %1193

1142:                                             ; preds = %1138
  %1143 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1144 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1143, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1144, i32 0, i32 16
  %1146 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %1145, align 8
  %1147 = load i32, i32* %24, align 4
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %1146, i64 %1148
  %1150 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1149, align 8
  store %struct.TYPE_57__* %1150, %struct.TYPE_57__** %25, align 8
  %1151 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %1152 = icmp eq %struct.TYPE_57__* %1151, null
  br i1 %1152, label %1163, label %1153

1153:                                             ; preds = %1142
  %1154 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1155 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1154, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1155, i32 0, i32 7
  %1157 = load i32*, i32** %1156, align 8
  %1158 = load i32, i32* %24, align 4
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds i32, i32* %1157, i64 %1159
  %1161 = load i32, i32* %1160, align 4
  %1162 = icmp ne i32 %1161, 0
  br i1 %1162, label %1163, label %1164

1163:                                             ; preds = %1153, %1142
  br label %1190

1164:                                             ; preds = %1153
  %1165 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1166 = load i32, i32* %24, align 4
  %1167 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1168 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1167, i32 0, i32 7
  %1169 = load i32, i32* %1168, align 8
  %1170 = sext i32 %1169 to i64
  %1171 = load i32, i32* %24, align 4
  %1172 = call i32 (i8*, %struct.TYPE_61__*, i32, i64, ...) @DAC960_Critical(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.29, i64 0, i64 0), %struct.TYPE_61__* %1165, i32 %1166, i64 %1170, i32 %1171)
  %1173 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1174 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1173, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1174, i32 0, i32 16
  %1176 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %1175, align 8
  %1177 = load i32, i32* %24, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %1176, i64 %1178
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %1179, align 8
  %1180 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %1181 = call i32 @kfree(%struct.TYPE_57__* %1180)
  %1182 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1183 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1182, i32 0, i32 1
  %1184 = load i32*, i32** %1183, align 8
  %1185 = load i32, i32* %24, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds i32, i32* %1184, i64 %1186
  store i32 0, i32* %1187, align 4
  %1188 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1189 = call i32 @DAC960_ComputeGenericDiskInfo(%struct.TYPE_61__* %1188)
  br label %1190

1190:                                             ; preds = %1164, %1163
  %1191 = load i32, i32* %24, align 4
  %1192 = add nsw i32 %1191, 1
  store i32 %1192, i32* %24, align 4
  br label %1138

1193:                                             ; preds = %1138
  %1194 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1195 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1194, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1195, i32 0, i32 0
  store i32 0, i32* %1196, align 8
  br label %1234

1197:                                             ; preds = %1133
  %1198 = load i64, i64* %6, align 8
  %1199 = load i64, i64* @DAC960_V2_SCSI_10_Passthru, align 8
  %1200 = icmp eq i64 %1198, %1199
  br i1 %1200, label %1201, label %1233

1201:                                             ; preds = %1197
  %1202 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1203 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1202, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1203, i32 0, i32 15
  %1205 = load %struct.TYPE_57__**, %struct.TYPE_57__*** %1204, align 8
  %1206 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1207 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1206, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1207, i32 0, i32 5
  %1209 = load i32, i32* %1208, align 4
  %1210 = sub i32 %1209, 1
  %1211 = zext i32 %1210 to i64
  %1212 = getelementptr inbounds %struct.TYPE_57__*, %struct.TYPE_57__** %1205, i64 %1211
  %1213 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1212, align 8
  store %struct.TYPE_57__* %1213, %struct.TYPE_57__** %26, align 8
  %1214 = load i64, i64* %7, align 8
  %1215 = load i64, i64* @DAC960_V2_NormalCompletion, align 8
  %1216 = icmp ne i64 %1214, %1215
  br i1 %1216, label %1217, label %1222

1217:                                             ; preds = %1201
  %1218 = load %struct.TYPE_57__*, %struct.TYPE_57__** %26, align 8
  %1219 = call i32 @memset(%struct.TYPE_57__* %1218, i32 0, i32 272)
  %1220 = load %struct.TYPE_57__*, %struct.TYPE_57__** %26, align 8
  %1221 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1220, i32 0, i32 8
  store i32 31, i32* %1221, align 8
  br label %1229

1222:                                             ; preds = %1201
  %1223 = load %struct.TYPE_57__*, %struct.TYPE_57__** %26, align 8
  %1224 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1225 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1224, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1225, i32 0, i32 12
  %1227 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1226, align 8
  %1228 = call i32 @memcpy(%struct.TYPE_57__* %1223, %struct.TYPE_57__* %1227, i32 272)
  br label %1229

1229:                                             ; preds = %1222, %1217
  %1230 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1231 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1230, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1231, i32 0, i32 6
  store i32 0, i32* %1232, align 8
  br label %1233

1233:                                             ; preds = %1229, %1197
  br label %1234

1234:                                             ; preds = %1233, %1193
  br label %1235

1235:                                             ; preds = %1234, %1121
  br label %1236

1236:                                             ; preds = %1235, %839
  br label %1237

1237:                                             ; preds = %1236, %765
  br label %1238

1238:                                             ; preds = %1237, %215
  br label %1239

1239:                                             ; preds = %1238, %192
  %1240 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1241 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1240, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1241, i32 0, i32 14
  %1243 = load %struct.TYPE_66__*, %struct.TYPE_66__** %1242, align 8
  %1244 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %1243, i32 0, i32 0
  %1245 = load i64, i64* %1244, align 8
  %1246 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1247 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1246, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1247, i32 0, i32 4
  %1249 = load i32, i32* %1248, align 8
  %1250 = sext i32 %1249 to i64
  %1251 = sub nsw i64 %1245, %1250
  %1252 = icmp sgt i64 %1251, 0
  br i1 %1252, label %1253, label %1308

1253:                                             ; preds = %1239
  %1254 = load i8*, i8** @DAC960_V2_IOCTL, align 8
  %1255 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1256 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1255, i32 0, i32 2
  %1257 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1256, i32 0, i32 6
  store i8* %1254, i8** %1257, align 8
  %1258 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1259 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1258, i32 0, i32 2
  %1260 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1259, i32 0, i32 0
  store i32 4, i32* %1260, align 8
  %1261 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1262 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1261, i32 0, i32 6
  %1263 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1262, i32 0, i32 4
  %1264 = load i32, i32* %1263, align 8
  %1265 = ashr i32 %1264, 16
  %1266 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1267 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1266, i32 0, i32 2
  %1268 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1267, i32 0, i32 1
  store i32 %1265, i32* %1268, align 4
  %1269 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1270 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1269, i32 0, i32 2
  %1271 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1270, i32 0, i32 5
  store i64 0, i64* %1271, align 8
  %1272 = load i64, i64* @DAC960_V2_GetEvent, align 8
  %1273 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1274 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1273, i32 0, i32 2
  %1275 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1274, i32 0, i32 4
  store i64 %1272, i64* %1275, align 8
  %1276 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1277 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1276, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1277, i32 0, i32 4
  %1279 = load i32, i32* %1278, align 8
  %1280 = and i32 %1279, 65535
  %1281 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1282 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1281, i32 0, i32 2
  %1283 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1282, i32 0, i32 2
  store i32 %1280, i32* %1283, align 8
  %1284 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1285 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1284, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1285, i32 0, i32 13
  %1287 = load i32, i32* %1286, align 8
  %1288 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1289 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1288, i32 0, i32 2
  %1290 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1289, i32 0, i32 3
  %1291 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1290, i32 0, i32 0
  %1292 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1291, align 8
  %1293 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1292, i64 0
  %1294 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1293, i32 0, i32 1
  store i32 %1287, i32* %1294, align 4
  %1295 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1296 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1295, i32 0, i32 2
  %1297 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1296, i32 0, i32 0
  %1298 = load i32, i32* %1297, align 8
  %1299 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1300 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1299, i32 0, i32 2
  %1301 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %1300, i32 0, i32 3
  %1302 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %1301, i32 0, i32 0
  %1303 = load %struct.TYPE_67__*, %struct.TYPE_67__** %1302, align 8
  %1304 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1303, i64 0
  %1305 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %1304, i32 0, i32 0
  store i32 %1298, i32* %1305, align 4
  %1306 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1307 = call i32 @DAC960_QueueCommand(%struct.TYPE_62__* %1306)
  br label %1605

1308:                                             ; preds = %1239
  %1309 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1310 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1309, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1310, i32 0, i32 1
  %1312 = load i32, i32* %1311, align 4
  %1313 = icmp ne i32 %1312, 0
  br i1 %1313, label %1314, label %1445

1314:                                             ; preds = %1308
  %1315 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1316 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1315, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1316, i32 0, i32 6
  %1318 = load i32, i32* %1317, align 8
  %1319 = icmp ne i32 %1318, 0
  br i1 %1319, label %1320, label %1351

1320:                                             ; preds = %1314
  %1321 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1322 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1321, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1322, i32 0, i32 12
  %1324 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1323, align 8
  store %struct.TYPE_57__* %1324, %struct.TYPE_57__** %27, align 8
  %1325 = load %struct.TYPE_57__*, %struct.TYPE_57__** %27, align 8
  %1326 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1325, i32 0, i32 8
  store i32 31, i32* %1326, align 8
  %1327 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1328 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1329 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1330 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1329, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1330, i32 0, i32 11
  %1332 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1331, align 8
  %1333 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1332, i32 0, i32 4
  %1334 = load i64, i64* %1333, align 8
  %1335 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1336 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1335, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1336, i32 0, i32 11
  %1338 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1337, align 8
  %1339 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1338, i32 0, i32 5
  %1340 = load i64, i64* %1339, align 8
  %1341 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1342 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1341, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1342, i32 0, i32 11
  %1344 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1343, align 8
  %1345 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1344, i32 0, i32 6
  %1346 = load i64, i64* %1345, align 8
  %1347 = sub nsw i64 %1346, 1
  %1348 = call i32 @DAC960_V2_ConstructNewUnitSerialNumber(%struct.TYPE_61__* %1327, %struct.TYPE_60__* %1328, i64 %1334, i64 %1340, i64 %1347)
  %1349 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1350 = call i32 @DAC960_QueueCommand(%struct.TYPE_62__* %1349)
  br label %1605

1351:                                             ; preds = %1314
  %1352 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1353 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1352, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1353, i32 0, i32 3
  %1355 = load i32, i32* %1354, align 4
  %1356 = icmp ne i32 %1355, 0
  br i1 %1356, label %1357, label %1379

1357:                                             ; preds = %1351
  %1358 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1359 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1358, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1359, i32 0, i32 5
  store i32 0, i32* %1360, align 4
  %1361 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1362 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1361, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1362, i32 0, i32 11
  %1364 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1363, align 8
  %1365 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1364, i32 0, i32 4
  store i64 0, i64* %1365, align 8
  %1366 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1367 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1366, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1367, i32 0, i32 11
  %1369 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1368, align 8
  %1370 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1369, i32 0, i32 5
  store i64 0, i64* %1370, align 8
  %1371 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1372 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1371, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1372, i32 0, i32 11
  %1374 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1373, align 8
  %1375 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1374, i32 0, i32 6
  store i64 0, i64* %1375, align 8
  %1376 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1377 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1376, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1377, i32 0, i32 3
  store i32 0, i32* %1378, align 4
  br label %1379

1379:                                             ; preds = %1357, %1351
  %1380 = load i8*, i8** @DAC960_V2_IOCTL, align 8
  %1381 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1382 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1381, i32 0, i32 1
  %1383 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1382, i32 0, i32 4
  store i8* %1380, i8** %1383, align 8
  %1384 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1385 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1384, i32 0, i32 1
  %1386 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1385, i32 0, i32 0
  store i32 272, i32* %1386, align 8
  %1387 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1388 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1387, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1388, i32 0, i32 11
  %1390 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1389, align 8
  %1391 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1390, i32 0, i32 6
  %1392 = load i64, i64* %1391, align 8
  %1393 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1394 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1393, i32 0, i32 1
  %1395 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1394, i32 0, i32 3
  %1396 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1395, i32 0, i32 0
  store i64 %1392, i64* %1396, align 8
  %1397 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1398 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1397, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1398, i32 0, i32 11
  %1400 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1399, align 8
  %1401 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1400, i32 0, i32 5
  %1402 = load i64, i64* %1401, align 8
  %1403 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1404 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1404, i32 0, i32 3
  %1406 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1405, i32 0, i32 1
  store i64 %1402, i64* %1406, align 8
  %1407 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1408 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1407, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1408, i32 0, i32 11
  %1410 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1409, align 8
  %1411 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1410, i32 0, i32 4
  %1412 = load i64, i64* %1411, align 8
  %1413 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1414 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1413, i32 0, i32 1
  %1415 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1414, i32 0, i32 3
  %1416 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %1415, i32 0, i32 2
  store i64 %1412, i64* %1416, align 8
  %1417 = load i64, i64* @DAC960_V2_GetPhysicalDeviceInfoValid, align 8
  %1418 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1419 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1418, i32 0, i32 1
  %1420 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1419, i32 0, i32 2
  store i64 %1417, i64* %1420, align 8
  %1421 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1422 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1421, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1422, i32 0, i32 10
  %1424 = load i32, i32* %1423, align 8
  %1425 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1426 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1425, i32 0, i32 1
  %1427 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1426, i32 0, i32 1
  %1428 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1427, i32 0, i32 0
  %1429 = load %struct.TYPE_71__*, %struct.TYPE_71__** %1428, align 8
  %1430 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1429, i64 0
  %1431 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1430, i32 0, i32 1
  store i32 %1424, i32* %1431, align 4
  %1432 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1433 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1432, i32 0, i32 1
  %1434 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1433, i32 0, i32 0
  %1435 = load i32, i32* %1434, align 8
  %1436 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1437 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1436, i32 0, i32 1
  %1438 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %1437, i32 0, i32 1
  %1439 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %1438, i32 0, i32 0
  %1440 = load %struct.TYPE_71__*, %struct.TYPE_71__** %1439, align 8
  %1441 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1440, i64 0
  %1442 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %1441, i32 0, i32 0
  store i32 %1435, i32* %1442, align 4
  %1443 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1444 = call i32 @DAC960_QueueCommand(%struct.TYPE_62__* %1443)
  br label %1605

1445:                                             ; preds = %1308
  %1446 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1447 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1446, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1447, i32 0, i32 0
  %1449 = load i32, i32* %1448, align 8
  %1450 = icmp ne i32 %1449, 0
  br i1 %1450, label %1451, label %1528

1451:                                             ; preds = %1445
  %1452 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1453 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1452, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1453, i32 0, i32 2
  %1455 = load i32, i32* %1454, align 8
  %1456 = icmp ne i32 %1455, 0
  br i1 %1456, label %1457, label %1482

1457:                                             ; preds = %1451
  store i32 0, i32* %28, align 4
  br label %1458

1458:                                             ; preds = %1470, %1457
  %1459 = load i32, i32* %28, align 4
  %1460 = load i32, i32* @DAC960_MaxLogicalDrives, align 4
  %1461 = icmp slt i32 %1459, %1460
  br i1 %1461, label %1462, label %1473

1462:                                             ; preds = %1458
  %1463 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1464 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1463, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1464, i32 0, i32 7
  %1466 = load i32*, i32** %1465, align 8
  %1467 = load i32, i32* %28, align 4
  %1468 = sext i32 %1467 to i64
  %1469 = getelementptr inbounds i32, i32* %1466, i64 %1468
  store i32 0, i32* %1469, align 4
  br label %1470

1470:                                             ; preds = %1462
  %1471 = load i32, i32* %28, align 4
  %1472 = add nsw i32 %1471, 1
  store i32 %1472, i32* %28, align 4
  br label %1458

1473:                                             ; preds = %1458
  %1474 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1475 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1474, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1475, i32 0, i32 9
  %1477 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1476, align 8
  %1478 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1477, i32 0, i32 15
  store i16 0, i16* %1478, align 8
  %1479 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1480 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1479, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1480, i32 0, i32 2
  store i32 0, i32* %1481, align 8
  br label %1482

1482:                                             ; preds = %1473, %1451
  %1483 = load i8*, i8** @DAC960_V2_IOCTL, align 8
  %1484 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1485 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1484, i32 0, i32 0
  %1486 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1485, i32 0, i32 4
  store i8* %1483, i8** %1486, align 8
  %1487 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1488 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1488, i32 0, i32 0
  store i32 272, i32* %1489, align 8
  %1490 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1491 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1490, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1491, i32 0, i32 9
  %1493 = load %struct.TYPE_57__*, %struct.TYPE_57__** %1492, align 8
  %1494 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %1493, i32 0, i32 15
  %1495 = load i16, i16* %1494, align 8
  %1496 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1497 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1496, i32 0, i32 0
  %1498 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1497, i32 0, i32 3
  %1499 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %1498, i32 0, i32 0
  store i16 %1495, i16* %1499, align 8
  %1500 = load i64, i64* @DAC960_V2_GetLogicalDeviceInfoValid, align 8
  %1501 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1502 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1502, i32 0, i32 2
  store i64 %1500, i64* %1503, align 8
  %1504 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1505 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1504, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %1505, i32 0, i32 8
  %1507 = load i32, i32* %1506, align 8
  %1508 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1509 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1508, i32 0, i32 0
  %1510 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1509, i32 0, i32 1
  %1511 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1510, i32 0, i32 0
  %1512 = load %struct.TYPE_52__*, %struct.TYPE_52__** %1511, align 8
  %1513 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1512, i64 0
  %1514 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1513, i32 0, i32 1
  store i32 %1507, i32* %1514, align 4
  %1515 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1516 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1515, i32 0, i32 0
  %1517 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1516, i32 0, i32 0
  %1518 = load i32, i32* %1517, align 8
  %1519 = load %struct.TYPE_60__*, %struct.TYPE_60__** %5, align 8
  %1520 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %1519, i32 0, i32 0
  %1521 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %1520, i32 0, i32 1
  %1522 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %1521, i32 0, i32 0
  %1523 = load %struct.TYPE_52__*, %struct.TYPE_52__** %1522, align 8
  %1524 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1523, i64 0
  %1525 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %1524, i32 0, i32 0
  store i32 %1518, i32* %1525, align 4
  %1526 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1527 = call i32 @DAC960_QueueCommand(%struct.TYPE_62__* %1526)
  br label %1605

1528:                                             ; preds = %1445
  %1529 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1530 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1529, i32 0, i32 5
  %1531 = load i32, i32* %1530, align 8
  %1532 = add nsw i32 %1531, 1
  store i32 %1532, i32* %1530, align 8
  %1533 = load i64, i64* @jiffies, align 8
  %1534 = load i64, i64* @DAC960_HealthStatusMonitoringInterval, align 8
  %1535 = add nsw i64 %1533, %1534
  %1536 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1537 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1536, i32 0, i32 4
  %1538 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %1537, i32 0, i32 0
  store i64 %1535, i64* %1538, align 8
  %1539 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1540 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1539, i32 0, i32 4
  %1541 = call i32 @add_timer(%struct.TYPE_64__* %1540)
  br label %1542

1542:                                             ; preds = %1528, %134
  br label %1543

1543:                                             ; preds = %1542, %133
  br label %1544

1544:                                             ; preds = %1543, %99
  %1545 = load i64, i64* %4, align 8
  %1546 = load i64, i64* @DAC960_ImmediateCommand, align 8
  %1547 = icmp eq i64 %1545, %1546
  br i1 %1547, label %1548, label %1555

1548:                                             ; preds = %1544
  %1549 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1550 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1549, i32 0, i32 2
  %1551 = load i32*, i32** %1550, align 8
  %1552 = call i32 @complete(i32* %1551)
  %1553 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1554 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1553, i32 0, i32 2
  store i32* null, i32** %1554, align 8
  br label %1605

1555:                                             ; preds = %1544
  %1556 = load i64, i64* %4, align 8
  %1557 = load i64, i64* @DAC960_QueuedCommand, align 8
  %1558 = icmp eq i64 %1556, %1557
  br i1 %1558, label %1559, label %1589

1559:                                             ; preds = %1555
  %1560 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1561 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1560, i32 0, i32 1
  %1562 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1561, i32 0, i32 1
  %1563 = load %struct.TYPE_59__*, %struct.TYPE_59__** %1562, align 8
  store %struct.TYPE_59__* %1563, %struct.TYPE_59__** %29, align 8
  %1564 = load i64, i64* %7, align 8
  %1565 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  %1566 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1565, i32 0, i32 3
  store i64 %1564, i64* %1566, align 8
  %1567 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1568 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1567, i32 0, i32 1
  %1569 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1568, i32 0, i32 3
  %1570 = load i32, i32* %1569, align 4
  %1571 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  %1572 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1571, i32 0, i32 2
  store i32 %1570, i32* %1572, align 4
  %1573 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1574 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1573, i32 0, i32 1
  %1575 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1574, i32 0, i32 2
  %1576 = load i32, i32* %1575, align 8
  %1577 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  %1578 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1577, i32 0, i32 1
  store i32 %1576, i32* %1578, align 8
  %1579 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1580 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %1579, i32 0, i32 1
  %1581 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %1580, i32 0, i32 1
  store %struct.TYPE_59__* null, %struct.TYPE_59__** %1581, align 8
  %1582 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1583 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_62__* %1582)
  %1584 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  %1585 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %1584, i32 0, i32 0
  %1586 = load i32 (%struct.TYPE_59__*)*, i32 (%struct.TYPE_59__*)** %1585, align 8
  %1587 = load %struct.TYPE_59__*, %struct.TYPE_59__** %29, align 8
  %1588 = call i32 %1586(%struct.TYPE_59__* %1587)
  br label %1605

1589:                                             ; preds = %1555
  %1590 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1591 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1590, i32 0, i32 2
  %1592 = load i32, i32* %1591, align 8
  %1593 = icmp ne i32 %1592, 0
  br i1 %1593, label %1594, label %1599

1594:                                             ; preds = %1589
  %1595 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1596 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1595, i32 0, i32 2
  store i32 0, i32* %1596, align 8
  %1597 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1598 = call i32 @DAC960_V2_QueueMonitoringCommand(%struct.TYPE_62__* %1597)
  br label %1605

1599:                                             ; preds = %1589
  %1600 = load %struct.TYPE_62__*, %struct.TYPE_62__** %2, align 8
  %1601 = call i32 @DAC960_DeallocateCommand(%struct.TYPE_62__* %1600)
  %1602 = load %struct.TYPE_61__*, %struct.TYPE_61__** %3, align 8
  %1603 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %1602, i32 0, i32 3
  %1604 = call i32 @wake_up(i32* %1603)
  br label %1605

1605:                                             ; preds = %1599, %1594, %1559, %1548, %1482, %1379, %1320, %1253, %143, %130, %80
  ret void
}

declare dso_local i32 @DAC960_ProcessCompletedRequest(%struct.TYPE_62__*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @DAC960_queue_partial_rw(%struct.TYPE_62__*) #1

declare dso_local i32 @DAC960_V2_ReadWriteError(%struct.TYPE_62__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_57__*, %struct.TYPE_57__*, i32) #1

declare dso_local i32 @DAC960_V2_ReportEvent(%struct.TYPE_61__*, i32) #1

declare dso_local i32 @DAC960_Critical(i8*, %struct.TYPE_61__*, i32, i64, ...) #1

declare dso_local i32 @kfree(%struct.TYPE_57__*) #1

declare dso_local %struct.TYPE_57__* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_57__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DAC960_ComputeGenericDiskInfo(%struct.TYPE_61__*) #1

declare dso_local i32 @DAC960_V2_ReportProgress(%struct.TYPE_61__*, i8*, i16 zeroext, i32, i64) #1

declare dso_local i32 @DAC960_Progress(i8*, %struct.TYPE_61__*, i16 zeroext, i32, i16 zeroext, i8*) #1

declare dso_local i32 @DAC960_QueueCommand(%struct.TYPE_62__*) #1

declare dso_local i32 @DAC960_V2_ConstructNewUnitSerialNumber(%struct.TYPE_61__*, %struct.TYPE_60__*, i64, i64, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_64__*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @DAC960_DeallocateCommand(%struct.TYPE_62__*) #1

declare dso_local i32 @DAC960_V2_QueueMonitoringCommand(%struct.TYPE_62__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
