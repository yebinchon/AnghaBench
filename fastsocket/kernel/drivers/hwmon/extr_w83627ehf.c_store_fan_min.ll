; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_store_fan_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_w83627ehf.c_store_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.w83627ehf_data = type { i32*, i32*, i32*, i32, i32 }
%struct.sensor_device_attribute = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"fan%u low limit and alarm disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"fan%u low limit %u below minimum %u, set to minimum\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"fan%u low limit %u above maximum %u, set to maximum\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"fan%u clock divider changed from %u to %u\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@W83627EHF_REG_FAN_MIN = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_fan_min(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.w83627ehf_data*, align 8
  %10 = alloca %struct.sensor_device_attribute*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %15)
  store %struct.w83627ehf_data* %16, %struct.w83627ehf_data** %9, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %18 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %17)
  store %struct.sensor_device_attribute* %18, %struct.sensor_device_attribute** %10, align 8
  %19 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %10, align 8
  %20 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 10)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %25 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %24, i32 0, i32 3
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %4
  %30 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %31 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 255, i32* %35, align 4
  %36 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %37 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %14, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @dev_info(%struct.device* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %104

47:                                               ; preds = %4
  %48 = load i32, i32* %12, align 4
  %49 = udiv i32 1350000, %48
  store i32 %49, i32* %13, align 4
  %50 = icmp uge i32 %49, 32640
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %53 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 254, i32* %57, align 4
  store i32 7, i32* %14, align 4
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @fan_from_reg(i32 254, i32 128)
  %63 = call i32 @dev_warn(%struct.device* %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %103

64:                                               ; preds = %47
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %69 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  store i32 0, i32* %14, align 4
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @fan_from_reg(i32 1, i32 1)
  %79 = call i32 @dev_warn(%struct.device* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %102

80:                                               ; preds = %64
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %89, %80
  %82 = load i32, i32* %13, align 4
  %83 = icmp ugt i32 %82, 192
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 7
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i32, i32* %13, align 4
  %91 = lshr i32 %90, 1
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %81

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %97 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %67
  br label %103

103:                                              ; preds = %102, %51
  br label %104

104:                                              ; preds = %103, %29
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %107 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %105, %112
  br i1 %113, label %114, label %216

114:                                              ; preds = %104
  %115 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %116 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 255
  br i1 %122, label %123, label %188

123:                                              ; preds = %114
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %126 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp sgt i32 %124, %131
  br i1 %132, label %133, label %151

133:                                              ; preds = %123
  %134 = load i32, i32* %14, align 4
  %135 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %136 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = sub nsw i32 %134, %141
  %143 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %144 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %187

151:                                              ; preds = %123
  %152 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %153 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 128
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %151
  %162 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %163 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 255, i32* %167, align 4
  br label %186

168:                                              ; preds = %151
  %169 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %170 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %179 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, %177
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %168, %161
  br label %187

187:                                              ; preds = %186, %133
  br label %188

188:                                              ; preds = %187, %114
  %189 = load %struct.device*, %struct.device** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 1
  %192 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %193 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @div_from_reg(i32 %198)
  %200 = load i32, i32* %14, align 4
  %201 = call i32 @div_from_reg(i32 %200)
  %202 = call i32 @dev_dbg(%struct.device* %189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %199, i32 %201)
  %203 = load i32, i32* %14, align 4
  %204 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %205 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32 %203, i32* %209, align 4
  %210 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data* %210, i32 %211)
  %213 = load i32, i32* @jiffies, align 4
  %214 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %215 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %188, %104
  %217 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %218 = load i32*, i32** @W83627EHF_REG_FAN_MIN, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %224 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %217, i32 %222, i32 %229)
  %231 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %9, align 8
  %232 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %231, i32 0, i32 3
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load i64, i64* %8, align 8
  ret i64 %234
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @fan_from_reg(i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @div_from_reg(i32) #1

declare dso_local i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
