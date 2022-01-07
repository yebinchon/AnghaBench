; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_smsc47m192.c_smsc47m192_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc47m192_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SMSC47M192_REG_SFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Starting smsc47m192 update\0A\00", align 1
@SMSC47M192_REG_TEMP = common dso_local global i32* null, align 8
@SMSC47M192_REG_TEMP_MAX = common dso_local global i32* null, align 8
@SMSC47M192_REG_TEMP_MIN = common dso_local global i32* null, align 8
@SMSC47M192_REG_VID = common dso_local global i32 0, align 4
@SMSC47M192_REG_CONFIG = common dso_local global i32 0, align 4
@SMSC47M192_REG_VID4 = common dso_local global i32 0, align 4
@SMSC47M192_REG_ALARM1 = common dso_local global i32 0, align 4
@SMSC47M192_REG_ALARM2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smsc47m192_data* (%struct.device*)* @smsc47m192_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smsc47m192_data* @smsc47m192_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.smsc47m192_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.i2c_client* @to_i2c_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.smsc47m192_data* %11, %struct.smsc47m192_data** %4, align 8
  %12 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %13 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %12, i32 0, i32 10
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %17 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %16, i32 0, i32 11
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @HZ, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = load i32, i32* @HZ, align 4
  %23 = sdiv i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = call i64 @time_after(i64 %15, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %1
  %29 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %30 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %204, label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @SMSC47M192_REG_SFR, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %74, %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %41, 7
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @SMSC47M192_REG_IN(i32 %45)
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %44, i32 %46)
  %48 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %49 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @SMSC47M192_REG_IN_MIN(i32 %55)
  %57 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %54, i32 %56)
  %58 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %59 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @SMSC47M192_REG_IN_MAX(i32 %65)
  %67 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %64, i32 %66)
  %68 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %69 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %43
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %40

77:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %121, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %124

81:                                               ; preds = %78
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32*, i32** @SMSC47M192_REG_TEMP, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %87)
  %89 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %90 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %88, i32* %94, align 4
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = load i32*, i32** @SMSC47M192_REG_TEMP_MAX, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %95, i32 %100)
  %102 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %103 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %101, i32* %107, align 4
  %108 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %109 = load i32*, i32** @SMSC47M192_REG_TEMP_MIN, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %108, i32 %113)
  %115 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %116 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %81
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %78

124:                                              ; preds = %78
  store i32 1, i32* %5, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 3
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @SMSC47M192_REG_TEMP_OFFSET(i32 %130)
  %132 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %129, i32 %131)
  %133 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %134 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %133, i32 0, i32 7
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %132, i32* %138, align 4
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, 16
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %142
  %147 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %148 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %147, i32 0, i32 7
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %153 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 %151, i32* %155, align 4
  %156 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %157 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 0, i32* %159, align 4
  br label %165

160:                                              ; preds = %142
  %161 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %162 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %161, i32 0, i32 7
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 0, i32* %164, align 4
  br label %165

165:                                              ; preds = %160, %146
  %166 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %167 = load i32, i32* @SMSC47M192_REG_VID, align 4
  %168 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %166, i32 %167)
  %169 = and i32 %168, 15
  %170 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %171 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %170, i32 0, i32 8
  store i32 %169, i32* %171, align 8
  %172 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %173 = load i32, i32* @SMSC47M192_REG_CONFIG, align 4
  %174 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %172, i32 %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %165
  %179 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %180 = load i32, i32* @SMSC47M192_REG_VID4, align 4
  %181 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %179, i32 %180)
  %182 = and i32 %181, 1
  %183 = shl i32 %182, 4
  %184 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %185 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 8
  br label %188

188:                                              ; preds = %178, %165
  %189 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %190 = load i32, i32* @SMSC47M192_REG_ALARM1, align 4
  %191 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %189, i32 %190)
  %192 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %193 = load i32, i32* @SMSC47M192_REG_ALARM2, align 4
  %194 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %192, i32 %193)
  %195 = shl i32 %194, 8
  %196 = or i32 %191, %195
  %197 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %198 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %197, i32 0, i32 9
  store i32 %196, i32* %198, align 4
  %199 = load i64, i64* @jiffies, align 8
  %200 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %201 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %200, i32 0, i32 11
  store i64 %199, i64* %201, align 8
  %202 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %203 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  br label %204

204:                                              ; preds = %188, %28
  %205 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  %206 = getelementptr inbounds %struct.smsc47m192_data, %struct.smsc47m192_data* %205, i32 0, i32 10
  %207 = call i32 @mutex_unlock(i32* %206)
  %208 = load %struct.smsc47m192_data*, %struct.smsc47m192_data** %4, align 8
  ret %struct.smsc47m192_data* %208
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.smsc47m192_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @SMSC47M192_REG_IN(i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MIN(i32) #1

declare dso_local i32 @SMSC47M192_REG_IN_MAX(i32) #1

declare dso_local i32 @SMSC47M192_REG_TEMP_OFFSET(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
