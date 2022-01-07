; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_get_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_core.c_acpi_processor_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64 }
%struct.acpi_device = type { i32 }
%union.acpi_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%struct.acpi_processor = type { i64, i32, i32, %struct.TYPE_9__, i64, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@__const.acpi_processor_get_info.object = private unnamed_addr constant { %struct.TYPE_10__, [20 x i8] } { %struct.TYPE_10__ zeroinitializer, [20 x i8] undef }, align 8
@acpi_processor_get_info.cpu0_initialized = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@errata = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Bus mastering arbitration control present\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"No bus mastering arbitration control\0A\00", align 1
@ACPI_PROCESSOR_OBJECT_HID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to evaluate processor object (0x%x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@METHOD_NAME__UID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to evaluate processor _UID (0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"CPU%X\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Processor [%d:%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"No PBLK (NULL address)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Invalid PBLK length [%d]\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"ACPI CPU throttle\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_processor_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_info(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %struct.acpi_processor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = bitcast %union.acpi_object* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast ({ %struct.TYPE_10__, [20 x i8] }* @__const.acpi_processor_get_info.object to i8*), i64 24, i1 false)
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  store i32 24, i32* %12, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store %union.acpi_object* %5, %union.acpi_object** %13, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = call %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device* %14)
  store %struct.acpi_processor* %15, %struct.acpi_processor** %7, align 8
  %16 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %17 = icmp ne %struct.acpi_processor* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %203

21:                                               ; preds = %1
  %22 = call i32 (...) @num_online_cpus()
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @errata, i32 0, i32 0), align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %28 = call i32 @acpi_processor_errata(%struct.acpi_processor* %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 3), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 2), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* @ACPI_DB_INFO, align 4
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([43 x i8]* @.str to i32))
  br label %43

40:                                               ; preds = %31, %26
  %41 = load i32, i32* @ACPI_DB_INFO, align 4
  %42 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = call i32 @acpi_device_hid(%struct.acpi_device* %44)
  %46 = load i32, i32* @ACPI_PROCESSOR_OBJECT_HID, align 4
  %47 = call i32 @strcmp(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %43
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @acpi_evaluate_object(i32 %52, i8* null, i32* null, %struct.acpi_buffer* %6)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %203

64:                                               ; preds = %49
  %65 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %69 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %90

70:                                               ; preds = %43
  %71 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %72 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @METHOD_NAME__UID, align 4
  %75 = call i32 @acpi_evaluate_integer(i32 %73, i32 %74, i32* null, i64* %10)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i64 @ACPI_FAILURE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %81 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %80, i32 0, i32 0
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %203

86:                                               ; preds = %70
  store i32 1, i32* %9, align 4
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %89 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %64
  %91 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %92 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %96 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @get_cpu_id(i32 %93, i32 %94, i64 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* @acpi_processor_get_info.cpu0_initialized, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %90
  %102 = load i32, i32* %8, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = call i32 (...) @num_online_cpus()
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %8, align 4
  br label %108

108:                                              ; preds = %107, %104, %101, %90
  store i32 1, i32* @acpi_processor_get_info.cpu0_initialized, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %111 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %113 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %125

116:                                              ; preds = %108
  %117 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %118 = call i32 @acpi_processor_hotadd_init(%struct.acpi_processor* %117)
  %119 = call i64 @ACPI_FAILURE(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @ENODEV, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %203

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %108
  %126 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %127 = call i32 @acpi_device_bid(%struct.acpi_device* %126)
  %128 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %129 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sprintf(i32 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ACPI_DB_INFO, align 4
  %133 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %134 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %137 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 @ACPI_DEBUG_PRINT(i32 %139)
  %141 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %125
  %146 = load i32, i32* @ACPI_DB_INFO, align 4
  %147 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([24 x i8]* @.str.6 to i32))
  br label %186

148:                                              ; preds = %125
  %149 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 6
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %155 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %154, i32 0, i32 0
  %156 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  br label %185

160:                                              ; preds = %148
  %161 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %165 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  store i64 %163, i64* %166, align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %168 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %169 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 4
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %172 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %173 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = bitcast %union.acpi_object* %5 to %struct.TYPE_8__*
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %179 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %178, i32 0, i32 4
  store i64 %177, i64* %179, align 8
  %180 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %181 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @request_region(i64 %183, i32 6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %185

185:                                              ; preds = %160, %153
  br label %186

186:                                              ; preds = %185, %145
  %187 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %188 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @acpi_evaluate_object(i32 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %190, i32* %4, align 4
  %191 = load i32, i32* %4, align 4
  %192 = call i64 @ACPI_SUCCESS(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %186
  %195 = load %struct.acpi_processor*, %struct.acpi_processor** %7, align 8
  %196 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = bitcast %union.acpi_object* %5 to %struct.TYPE_10__*
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @arch_fix_phys_package_id(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %194, %186
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %121, %79, %57, %18
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.acpi_processor* @acpi_driver_data(%struct.acpi_device*) #2

declare dso_local i32 @num_online_cpus(...) #2

declare dso_local i32 @acpi_processor_errata(%struct.acpi_processor*) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #2

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @acpi_evaluate_integer(i32, i32, i32*, i64*) #2

declare dso_local i32 @get_cpu_id(i32, i32, i64) #2

declare dso_local i32 @acpi_processor_hotadd_init(%struct.acpi_processor*) #2

declare dso_local i32 @sprintf(i32, i8*, i32) #2

declare dso_local i32 @acpi_device_bid(%struct.acpi_device*) #2

declare dso_local i32 @request_region(i64, i32, i8*) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i32 @arch_fix_phys_package_id(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
