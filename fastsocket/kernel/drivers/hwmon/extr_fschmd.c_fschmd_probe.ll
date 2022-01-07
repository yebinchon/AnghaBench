; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_fschmd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.fschmd_data = type { i32*, i32, i32*, i32*, i8*, %struct.TYPE_9__, i32, i32, i32*, i8*, i8*, i8*, i8*, %struct.i2c_client*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Poseidon\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Hermes\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Scylla\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Heracles\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Heimdall\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Hades\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Syleus\00", align 1
@__const.fschmd_probe.names = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)], align 16
@WATCHDOG_MINOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fscpos = common dso_local global i32 0, align 4
@fscher = common dso_local global i32 0, align 4
@fschrc = common dso_local global i32 0, align 4
@dmi_vref = common dso_local global i32 0, align 4
@fschmd_dmi_decode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"Couldn't get voltage scaling factors from BIOS DMI table, using builtin defaults\0A\00", align 1
@FSCHMD_REG_REVISION = common dso_local global i32 0, align 4
@FSCHMD_REG_CONTROL = common dso_local global i32 0, align 4
@FSCHMD_REG_WDOG_CONTROL = common dso_local global i32* null, align 8
@FSCHMD_REG_WDOG_STATE = common dso_local global i32* null, align 8
@FSCHMD_REG_WDOG_PRESET = common dso_local global i32* null, align 8
@dev_attr_alert_led = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FSCHMD_NO_VOLT_SENSORS = common dso_local global i32* null, align 8
@fschmd_attr = common dso_local global %struct.TYPE_12__* null, align 8
@FSCHMD_NO_TEMP_SENSORS = common dso_local global i32* null, align 8
@fschmd_temp_attr = common dso_local global %struct.TYPE_10__* null, align 8
@show_temp_max = common dso_local global i64 0, align 8
@fscsyl = common dso_local global i32 0, align 4
@FSCHMD_REG_TEMP_STATE = common dso_local global i32** null, align 8
@FSCHMD_TEMP_DISABLED = common dso_local global i32 0, align 4
@FSCHMD_NO_FAN_SENSORS = common dso_local global i32* null, align 8
@fschmd_fan_attr = common dso_local global %struct.TYPE_11__* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"pwm3_auto_point1_pwm\00", align 1
@FSCHMD_REG_FAN_STATE = common dso_local global i32** null, align 8
@FSCHMD_FAN_DISABLED = common dso_local global i32 0, align 4
@watchdog_data_mutex = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"watchdog%c\00", align 1
@watchdog_fops = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Registering watchdog chardev: %d\0A\00", align 1
@watchdog_data_list = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Registered watchdog chardev major 10, minor: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Couldn't register watchdog chardev (due to no free minor)\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Detected FSC %s chip, revision: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fschmd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fschmd_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.fschmd_data*, align 8
  %7 = alloca [7 x i8*], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast [7 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([7 x i8*]* @__const.fschmd_probe.names to i8*), i64 56, i1 false)
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* @WATCHDOG_MINOR, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 212, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 213, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 214, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 215, i32* %18, align 4
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fschmd_data* @kzalloc(i32 136, i32 %22)
  store %struct.fschmd_data* %23, %struct.fschmd_data** %6, align 8
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %25 = icmp ne %struct.fschmd_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %464

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.fschmd_data* %31)
  %33 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %34 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %33, i32 0, i32 16
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %37 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %36, i32 0, i32 15
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %40 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %43 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %42, i32 0, i32 14
  %44 = call i32 @kref_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %47 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %46, i32 0, i32 13
  store %struct.i2c_client* %45, %struct.i2c_client** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @fscpos, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %29
  %52 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %53 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 198, i32* %55, align 4
  %56 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %57 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 178, i32* %59, align 4
  %60 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %61 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 178, i32* %63, align 4
  br label %64

64:                                               ; preds = %51, %29
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @fscher, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @fschrc, align 4
  %71 = icmp uge i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @dmi_vref, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* @fschmd_dmi_decode, align 4
  %77 = call i32 @dmi_walk(i32 %76, i32* null)
  %78 = load i32, i32* @dmi_vref, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_warn(i32* %82, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0))
  store i32 33, i32* @dmi_vref, align 4
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %72, %68
  %86 = load i32, i32* %11, align 4
  %87 = sub i32 %86, 1
  %88 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %89 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = load i32, i32* @FSCHMD_REG_REVISION, align 4
  %92 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %90, i32 %91)
  %93 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %94 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %97 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %96)
  %98 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %99 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %98, i32 0, i32 12
  store i8* %97, i8** %99, align 8
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = load i32*, i32** @FSCHMD_REG_WDOG_CONTROL, align 8
  %102 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %103 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %100, i32 %107)
  %109 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %110 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %109, i32 0, i32 11
  store i8* %108, i8** %110, align 8
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = load i32*, i32** @FSCHMD_REG_WDOG_STATE, align 8
  %113 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %114 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %118)
  %120 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %121 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %120, i32 0, i32 10
  store i8* %119, i8** %121, align 8
  %122 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %123 = load i32*, i32** @FSCHMD_REG_WDOG_PRESET, align 8
  %124 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %125 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %122, i32 %129)
  %131 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %132 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = call i32 @device_create_file(i32* %134, %struct.TYPE_13__* @dev_attr_alert_led)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %85
  br label %460

139:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** @FSCHMD_NO_VOLT_SENSORS, align 8
  %143 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %144 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %141, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %140
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fschmd_attr, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = call i32 @device_create_file(i32* %152, %struct.TYPE_13__* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %150
  br label %460

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %140

166:                                              ; preds = %140
  store i32 0, i32* %9, align 4
  br label %167

167:                                              ; preds = %251, %166
  %168 = load i32, i32* %9, align 4
  %169 = load i32*, i32** @FSCHMD_NO_TEMP_SENSORS, align 8
  %170 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %171 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %175, 4
  %177 = icmp slt i32 %168, %176
  br i1 %177, label %178, label %254

178:                                              ; preds = %167
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* @fscpos, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fschmd_temp_attr, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @show_temp_max, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %182
  br label %251

193:                                              ; preds = %182, %178
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @fscsyl, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %238

197:                                              ; preds = %193
  %198 = load i32, i32* %9, align 4
  %199 = srem i32 %198, 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %197
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = load i32**, i32*** @FSCHMD_REG_TEMP_STATE, align 8
  %204 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %205 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %203, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sdiv i32 %210, 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %202, i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %218 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sdiv i32 %220, 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  store i32 %216, i32* %223, align 4
  br label %224

224:                                              ; preds = %201, %197
  %225 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %226 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sdiv i32 %228, 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %227, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @FSCHMD_TEMP_DISABLED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %224
  br label %251

237:                                              ; preds = %224
  br label %238

238:                                              ; preds = %237, %193
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fschmd_temp_attr, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 0
  %246 = call i32 @device_create_file(i32* %240, %struct.TYPE_13__* %245)
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  br label %460

250:                                              ; preds = %238
  br label %251

251:                                              ; preds = %250, %236, %192
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %167

254:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %255

255:                                              ; preds = %340, %254
  %256 = load i32, i32* %9, align 4
  %257 = load i32*, i32** @FSCHMD_NO_FAN_SENSORS, align 8
  %258 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %259 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %257, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = mul nsw i32 %263, 5
  %265 = icmp slt i32 %256, %264
  br i1 %265, label %266, label %343

266:                                              ; preds = %255
  %267 = load i32, i32* %11, align 4
  %268 = load i32, i32* @fscpos, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %282

270:                                              ; preds = %266
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fschmd_fan_attr, align 8
  %272 = load i32, i32* %9, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @strcmp(i32 %278, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %270
  br label %340

282:                                              ; preds = %270, %266
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @fscsyl, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %327

286:                                              ; preds = %282
  %287 = load i32, i32* %9, align 4
  %288 = srem i32 %287, 5
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %313

290:                                              ; preds = %286
  %291 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %292 = load i32**, i32*** @FSCHMD_REG_FAN_STATE, align 8
  %293 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %294 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32*, i32** %292, i64 %296
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sdiv i32 %299, 5
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %291, i32 %303)
  %305 = ptrtoint i8* %304 to i32
  %306 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %307 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sdiv i32 %309, 5
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  store i32 %305, i32* %312, align 4
  br label %313

313:                                              ; preds = %290, %286
  %314 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %315 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %314, i32 0, i32 3
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %9, align 4
  %318 = sdiv i32 %317, 5
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %316, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @FSCHMD_FAN_DISABLED, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %313
  br label %340

326:                                              ; preds = %313
  br label %327

327:                                              ; preds = %326, %282
  %328 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %329 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %328, i32 0, i32 0
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fschmd_fan_attr, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = call i32 @device_create_file(i32* %329, %struct.TYPE_13__* %334)
  store i32 %335, i32* %10, align 4
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %327
  br label %460

339:                                              ; preds = %327
  br label %340

340:                                              ; preds = %339, %325, %281
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %9, align 4
  br label %255

343:                                              ; preds = %255
  %344 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %345 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %344, i32 0, i32 0
  %346 = call i32* @hwmon_device_register(i32* %345)
  %347 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %348 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %347, i32 0, i32 8
  store i32* %346, i32** %348, align 8
  %349 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %350 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %349, i32 0, i32 8
  %351 = load i32*, i32** %350, align 8
  %352 = call i64 @IS_ERR(i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %361

354:                                              ; preds = %343
  %355 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %356 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %355, i32 0, i32 8
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @PTR_ERR(i32* %357)
  store i32 %358, i32* %10, align 4
  %359 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %360 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %359, i32 0, i32 8
  store i32* null, i32** %360, align 8
  br label %460

361:                                              ; preds = %343
  %362 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  store i32 0, i32* %9, align 4
  br label %363

363:                                              ; preds = %430, %361
  %364 = load i32, i32* %9, align 4
  %365 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %366 = call i32 @ARRAY_SIZE(i32* %365)
  %367 = icmp slt i32 %364, %366
  br i1 %367, label %368, label %433

368:                                              ; preds = %363
  %369 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %370 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %369, i32 0, i32 7
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %9, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %368
  br label %378

375:                                              ; preds = %368
  %376 = load i32, i32* %9, align 4
  %377 = add nsw i32 48, %376
  br label %378

378:                                              ; preds = %375, %374
  %379 = phi i32 [ 0, %374 ], [ %377, %375 ]
  %380 = trunc i32 %379 to i8
  %381 = call i32 @snprintf(i32 %371, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8 signext %380)
  %382 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %383 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %386 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 2
  store i32 %384, i32* %387, align 8
  %388 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %389 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %388, i32 0, i32 5
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 1
  store i32* @watchdog_fops, i32** %390, align 8
  %391 = load i32, i32* %9, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %396 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %396, i32 0, i32 0
  store i32 %394, i32* %397, align 8
  %398 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %399 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %398, i32 0, i32 5
  %400 = call i32 @misc_register(%struct.TYPE_9__* %399)
  store i32 %400, i32* %10, align 4
  %401 = load i32, i32* %10, align 4
  %402 = load i32, i32* @EBUSY, align 4
  %403 = sub nsw i32 0, %402
  %404 = icmp eq i32 %401, %403
  br i1 %404, label %405, label %406

405:                                              ; preds = %378
  br label %430

406:                                              ; preds = %378
  %407 = load i32, i32* %10, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %406
  %410 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %411 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %410, i32 0, i32 5
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 0
  store i32 0, i32* %412, align 8
  %413 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %414 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %413, i32 0, i32 0
  %415 = load i32, i32* %10, align 4
  %416 = call i32 @dev_err(i32* %414, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %415)
  br label %433

417:                                              ; preds = %406
  %418 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %419 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %418, i32 0, i32 6
  %420 = call i32 @list_add(i32* %419, i32* @watchdog_data_list)
  %421 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %422 = call i32 @watchdog_set_timeout(%struct.fschmd_data* %421, i32 60)
  %423 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %424 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %423, i32 0, i32 0
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i32*, i8*, ...) @dev_info(i32* %424, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %428)
  br label %433

430:                                              ; preds = %405
  %431 = load i32, i32* %9, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %9, align 4
  br label %363

433:                                              ; preds = %417, %409, %363
  %434 = load i32, i32* %9, align 4
  %435 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %436 = call i32 @ARRAY_SIZE(i32* %435)
  %437 = icmp eq i32 %434, %436
  br i1 %437, label %438, label %445

438:                                              ; preds = %433
  %439 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %440 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %439, i32 0, i32 5
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  store i32 0, i32* %441, align 8
  %442 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %443 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %442, i32 0, i32 0
  %444 = call i32 @dev_warn(i32* %443, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  br label %445

445:                                              ; preds = %438, %433
  %446 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  %447 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %448 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %447, i32 0, i32 0
  %449 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %450 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 %452
  %454 = load i8*, i8** %453, align 8
  %455 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %456 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %455, i32 0, i32 4
  %457 = load i8*, i8** %456, align 8
  %458 = ptrtoint i8* %457 to i32
  %459 = call i32 (i32*, i8*, ...) @dev_info(i32* %448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* %454, i32 %458)
  store i32 0, i32* %3, align 4
  br label %464

460:                                              ; preds = %354, %338, %249, %161, %138
  %461 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %462 = call i32 @fschmd_remove(%struct.i2c_client* %461)
  %463 = load i32, i32* %10, align 4
  store i32 %463, i32* %3, align 4
  br label %464

464:                                              ; preds = %460, %445, %26
  %465 = load i32, i32* %3, align 4
  ret i32 %465
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.fschmd_data* @kzalloc(i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fschmd_data*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @kref_init(i32*) #2

declare dso_local i32 @dmi_walk(i32, i32*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #2

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32* @hwmon_device_register(i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8 signext) #2

declare dso_local i32 @misc_register(%struct.TYPE_9__*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @watchdog_set_timeout(%struct.fschmd_data*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fschmd_remove(%struct.i2c_client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
