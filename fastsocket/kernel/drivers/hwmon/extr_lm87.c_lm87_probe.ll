; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_lm87.c_lm87_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.i2c_client = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.lm87_data = type { i32*, i32, i32, i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CHAN_VCC_5V = common dso_local global i32 0, align 4
@lm87_group = common dso_local global i32 0, align 4
@dev_attr_in6_input = common dso_local global i32 0, align 4
@dev_attr_in6_min = common dso_local global i32 0, align 4
@dev_attr_in6_max = common dso_local global i32 0, align 4
@sensor_dev_attr_in6_alarm = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dev_attr_fan1_input = common dso_local global i32 0, align 4
@dev_attr_fan1_min = common dso_local global i32 0, align 4
@dev_attr_fan1_div = common dso_local global i32 0, align 4
@sensor_dev_attr_fan1_alarm = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@dev_attr_in7_input = common dso_local global i32 0, align 4
@dev_attr_in7_min = common dso_local global i32 0, align 4
@dev_attr_in7_max = common dso_local global i32 0, align 4
@sensor_dev_attr_in7_alarm = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@dev_attr_fan2_input = common dso_local global i32 0, align 4
@dev_attr_fan2_min = common dso_local global i32 0, align 4
@dev_attr_fan2_div = common dso_local global i32 0, align 4
@sensor_dev_attr_fan2_alarm = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@CHAN_TEMP3 = common dso_local global i32 0, align 4
@dev_attr_temp3_input = common dso_local global i32 0, align 4
@dev_attr_temp3_max = common dso_local global i32 0, align 4
@dev_attr_temp3_min = common dso_local global i32 0, align 4
@dev_attr_temp3_crit = common dso_local global i32 0, align 4
@sensor_dev_attr_temp3_alarm = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@sensor_dev_attr_temp3_fault = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@dev_attr_in0_input = common dso_local global i32 0, align 4
@dev_attr_in0_min = common dso_local global i32 0, align 4
@dev_attr_in0_max = common dso_local global i32 0, align 4
@sensor_dev_attr_in0_alarm = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@dev_attr_in5_input = common dso_local global i32 0, align 4
@dev_attr_in5_min = common dso_local global i32 0, align 4
@dev_attr_in5_max = common dso_local global i32 0, align 4
@sensor_dev_attr_in5_alarm = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CHAN_NO_VID = common dso_local global i32 0, align 4
@dev_attr_cpu0_vid = common dso_local global i32 0, align 4
@dev_attr_vrm = common dso_local global i32 0, align 4
@lm87_group_opt = common dso_local global i32 0, align 4
@LM87_REG_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @lm87_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm87_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.lm87_data*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.lm87_data* @kzalloc(i32 40, i32 %8)
  store %struct.lm87_data* %9, %struct.lm87_data** %6, align 8
  %10 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %11 = icmp ne %struct.lm87_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %312

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %18 = call i32 @i2c_set_clientdata(%struct.i2c_client* %16, %struct.lm87_data* %17)
  %19 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %20 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %22 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %21, i32 0, i32 5
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = call i32 @lm87_init_client(%struct.i2c_client* %24)
  %26 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %27 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 2500, i32* %29, align 4
  %30 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %31 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 2700, i32* %33, align 4
  %34 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %35 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @CHAN_VCC_5V, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 5000, i32 3300
  %42 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %43 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %41, i32* %45, align 4
  %46 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %47 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 5000, i32* %49, align 4
  %50 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %51 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 12000, i32* %53, align 4
  %54 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %55 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 2700, i32* %57, align 4
  %58 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %59 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  store i32 1875, i32* %61, align 4
  %62 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %63 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  store i32 1875, i32* %65, align 4
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = call i32 @sysfs_create_group(i32* %68, i32* @lm87_group)
  store i32 %69, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %15
  br label %303

72:                                               ; preds = %15
  %73 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %74 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CHAN_NO_FAN(i32 0)
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %80, i32 0, i32 0
  %82 = call i32 @device_create_file(%struct.TYPE_19__* %81, i32* @dev_attr_in6_input)
  store i32 %82, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %79
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = call i32 @device_create_file(%struct.TYPE_19__* %86, i32* @dev_attr_in6_min)
  store i32 %87, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = call i32 @device_create_file(%struct.TYPE_19__* %91, i32* @dev_attr_in6_max)
  store i32 %92, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = call i32 @device_create_file(%struct.TYPE_19__* %96, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sensor_dev_attr_in6_alarm, i32 0, i32 0))
  store i32 %97, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89, %84, %79
  br label %294

100:                                              ; preds = %94
  br label %123

101:                                              ; preds = %72
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @device_create_file(%struct.TYPE_19__* %103, i32* @dev_attr_fan1_input)
  store i32 %104, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %101
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = call i32 @device_create_file(%struct.TYPE_19__* %108, i32* @dev_attr_fan1_min)
  store i32 %109, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %106
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = call i32 @device_create_file(%struct.TYPE_19__* %113, i32* @dev_attr_fan1_div)
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 0
  %119 = call i32 @device_create_file(%struct.TYPE_19__* %118, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sensor_dev_attr_fan1_alarm, i32 0, i32 0))
  store i32 %119, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116, %111, %106, %101
  br label %294

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %100
  %124 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %125 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @CHAN_NO_FAN(i32 1)
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %152

130:                                              ; preds = %123
  %131 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %132 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %131, i32 0, i32 0
  %133 = call i32 @device_create_file(%struct.TYPE_19__* %132, i32* @dev_attr_in7_input)
  store i32 %133, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %130
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = call i32 @device_create_file(%struct.TYPE_19__* %137, i32* @dev_attr_in7_min)
  store i32 %138, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = call i32 @device_create_file(%struct.TYPE_19__* %142, i32* @dev_attr_in7_max)
  store i32 %143, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %147 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %146, i32 0, i32 0
  %148 = call i32 @device_create_file(%struct.TYPE_19__* %147, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @sensor_dev_attr_in7_alarm, i32 0, i32 0))
  store i32 %148, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %140, %135, %130
  br label %294

151:                                              ; preds = %145
  br label %174

152:                                              ; preds = %123
  %153 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %154 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %153, i32 0, i32 0
  %155 = call i32 @device_create_file(%struct.TYPE_19__* %154, i32* @dev_attr_fan2_input)
  store i32 %155, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %159 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %158, i32 0, i32 0
  %160 = call i32 @device_create_file(%struct.TYPE_19__* %159, i32* @dev_attr_fan2_min)
  store i32 %160, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %157
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 @device_create_file(%struct.TYPE_19__* %164, i32* @dev_attr_fan2_div)
  store i32 %165, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = call i32 @device_create_file(%struct.TYPE_19__* %169, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @sensor_dev_attr_fan2_alarm, i32 0, i32 0))
  store i32 %170, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167, %162, %157, %152
  br label %294

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %151
  %175 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %176 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @CHAN_TEMP3, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %213

181:                                              ; preds = %174
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = call i32 @device_create_file(%struct.TYPE_19__* %183, i32* @dev_attr_temp3_input)
  store i32 %184, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %211, label %186

186:                                              ; preds = %181
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 0
  %189 = call i32 @device_create_file(%struct.TYPE_19__* %188, i32* @dev_attr_temp3_max)
  store i32 %189, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %211, label %191

191:                                              ; preds = %186
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call i32 @device_create_file(%struct.TYPE_19__* %193, i32* @dev_attr_temp3_min)
  store i32 %194, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %191
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %197, i32 0, i32 0
  %199 = call i32 @device_create_file(%struct.TYPE_19__* %198, i32* @dev_attr_temp3_crit)
  store i32 %199, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %196
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 0
  %204 = call i32 @device_create_file(%struct.TYPE_19__* %203, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sensor_dev_attr_temp3_alarm, i32 0, i32 0))
  store i32 %204, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 0
  %209 = call i32 @device_create_file(%struct.TYPE_19__* %208, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sensor_dev_attr_temp3_fault, i32 0, i32 0))
  store i32 %209, i32* %7, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206, %201, %196, %191, %186, %181
  br label %294

212:                                              ; preds = %206
  br label %255

213:                                              ; preds = %174
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %214, i32 0, i32 0
  %216 = call i32 @device_create_file(%struct.TYPE_19__* %215, i32* @dev_attr_in0_input)
  store i32 %216, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %253, label %218

218:                                              ; preds = %213
  %219 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %220 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %219, i32 0, i32 0
  %221 = call i32 @device_create_file(%struct.TYPE_19__* %220, i32* @dev_attr_in0_min)
  store i32 %221, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %253, label %223

223:                                              ; preds = %218
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = call i32 @device_create_file(%struct.TYPE_19__* %225, i32* @dev_attr_in0_max)
  store i32 %226, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %253, label %228

228:                                              ; preds = %223
  %229 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %230 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %229, i32 0, i32 0
  %231 = call i32 @device_create_file(%struct.TYPE_19__* %230, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @sensor_dev_attr_in0_alarm, i32 0, i32 0))
  store i32 %231, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %253, label %233

233:                                              ; preds = %228
  %234 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %235 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %234, i32 0, i32 0
  %236 = call i32 @device_create_file(%struct.TYPE_19__* %235, i32* @dev_attr_in5_input)
  store i32 %236, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %253, label %238

238:                                              ; preds = %233
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = call i32 @device_create_file(%struct.TYPE_19__* %240, i32* @dev_attr_in5_min)
  store i32 %241, i32* %7, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %253, label %243

243:                                              ; preds = %238
  %244 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %245 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %244, i32 0, i32 0
  %246 = call i32 @device_create_file(%struct.TYPE_19__* %245, i32* @dev_attr_in5_max)
  store i32 %246, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %243
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 0
  %251 = call i32 @device_create_file(%struct.TYPE_19__* %250, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sensor_dev_attr_in5_alarm, i32 0, i32 0))
  store i32 %251, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %248, %243, %238, %233, %228, %223, %218, %213
  br label %294

254:                                              ; preds = %248
  br label %255

255:                                              ; preds = %254, %212
  %256 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %257 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @CHAN_NO_VID, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %277, label %262

262:                                              ; preds = %255
  %263 = call i32 (...) @vid_which_vrm()
  %264 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %265 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %264, i32 0, i32 4
  store i32 %263, i32* %265, align 4
  %266 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %267 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %266, i32 0, i32 0
  %268 = call i32 @device_create_file(%struct.TYPE_19__* %267, i32* @dev_attr_cpu0_vid)
  store i32 %268, i32* %7, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %262
  %271 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %272 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %271, i32 0, i32 0
  %273 = call i32 @device_create_file(%struct.TYPE_19__* %272, i32* @dev_attr_vrm)
  store i32 %273, i32* %7, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270, %262
  br label %294

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276, %255
  %278 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %279 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %278, i32 0, i32 0
  %280 = call i32 @hwmon_device_register(%struct.TYPE_19__* %279)
  %281 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %282 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 8
  %283 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %284 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = call i64 @IS_ERR(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %277
  %289 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %290 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @PTR_ERR(i32 %291)
  store i32 %292, i32* %7, align 4
  br label %294

293:                                              ; preds = %277
  store i32 0, i32* %3, align 4
  br label %314

294:                                              ; preds = %288, %275, %253, %211, %172, %150, %121, %99
  %295 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %296 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  %298 = call i32 @sysfs_remove_group(i32* %297, i32* @lm87_group)
  %299 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %300 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = call i32 @sysfs_remove_group(i32* %301, i32* @lm87_group_opt)
  br label %303

303:                                              ; preds = %294, %71
  %304 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %305 = load i32, i32* @LM87_REG_CONFIG, align 4
  %306 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %307 = getelementptr inbounds %struct.lm87_data, %struct.lm87_data* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @lm87_write_value(%struct.i2c_client* %304, i32 %305, i32 %308)
  %310 = load %struct.lm87_data*, %struct.lm87_data** %6, align 8
  %311 = call i32 @kfree(%struct.lm87_data* %310)
  br label %312

312:                                              ; preds = %303, %12
  %313 = load i32, i32* %7, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %312, %293
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local %struct.lm87_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.lm87_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lm87_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @CHAN_NO_FAN(i32) #1

declare dso_local i32 @device_create_file(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @vid_which_vrm(...) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @lm87_write_value(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lm87_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
