; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_update_device_reg16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_tmp401.c_tmp401_update_device_reg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tmp401_data = type { i32*, i32*, i32*, i32*, i64, i32*, i32* }

@TMP401_TEMP_MSB = common dso_local global i32* null, align 8
@TMP401_TEMP_LSB = common dso_local global i32* null, align 8
@TMP401_TEMP_LOW_LIMIT_MSB_READ = common dso_local global i32* null, align 8
@TMP401_TEMP_LOW_LIMIT_LSB = common dso_local global i32* null, align 8
@TMP401_TEMP_HIGH_LIMIT_MSB_READ = common dso_local global i32* null, align 8
@TMP401_TEMP_HIGH_LIMIT_LSB = common dso_local global i32* null, align 8
@TMP401_TEMP_CRIT_LIMIT = common dso_local global i32* null, align 8
@tmp411 = common dso_local global i64 0, align 8
@TMP411_TEMP_LOWEST_MSB = common dso_local global i32* null, align 8
@TMP411_TEMP_LOWEST_LSB = common dso_local global i32* null, align 8
@TMP411_TEMP_HIGHEST_MSB = common dso_local global i32* null, align 8
@TMP411_TEMP_HIGHEST_LSB = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tmp401_data* (%struct.i2c_client*, %struct.tmp401_data*)* @tmp401_update_device_reg16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tmp401_data* @tmp401_update_device_reg16(%struct.i2c_client* %0, %struct.tmp401_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.tmp401_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.tmp401_data* %1, %struct.tmp401_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %175, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %178

9:                                                ; preds = %6
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32*, i32** @TMP401_TEMP_MSB, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %10, i32 %15)
  %17 = shl i32 %16, 8
  %18 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %19 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %17, i32* %23, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = load i32*, i32** @TMP401_TEMP_LSB, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %24, i32 %29)
  %31 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %32 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %30
  store i32 %38, i32* %36, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32*, i32** @TMP401_TEMP_LOW_LIMIT_MSB_READ, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %39, i32 %44)
  %46 = shl i32 %45, 8
  %47 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %48 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %54 = load i32*, i32** @TMP401_TEMP_LOW_LIMIT_LSB, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %53, i32 %58)
  %60 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %61 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %59
  store i32 %67, i32* %65, align 4
  %68 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %69 = load i32*, i32** @TMP401_TEMP_HIGH_LIMIT_MSB_READ, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %68, i32 %73)
  %75 = shl i32 %74, 8
  %76 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %77 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32*, i32** @TMP401_TEMP_HIGH_LIMIT_LSB, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %82, i32 %87)
  %89 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %90 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %88
  store i32 %96, i32* %94, align 4
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = load i32*, i32** @TMP401_TEMP_CRIT_LIMIT, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %97, i32 %102)
  %104 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %105 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %103, i32* %109, align 4
  %110 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %111 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @tmp411, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %174

115:                                              ; preds = %9
  %116 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %117 = load i32*, i32** @TMP411_TEMP_LOWEST_MSB, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %116, i32 %121)
  %123 = shl i32 %122, 8
  %124 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %125 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %124, i32 0, i32 5
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %131 = load i32*, i32** @TMP411_TEMP_LOWEST_LSB, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %130, i32 %135)
  %137 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %138 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %136
  store i32 %144, i32* %142, align 4
  %145 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %146 = load i32*, i32** @TMP411_TEMP_HIGHEST_MSB, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %145, i32 %150)
  %152 = shl i32 %151, 8
  %153 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %154 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %160 = load i32*, i32** @TMP411_TEMP_HIGHEST_LSB, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %159, i32 %164)
  %166 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  %167 = getelementptr inbounds %struct.tmp401_data, %struct.tmp401_data* %166, i32 0, i32 6
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %165
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %115, %9
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %6

178:                                              ; preds = %6
  %179 = load %struct.tmp401_data*, %struct.tmp401_data** %4, align 8
  ret %struct.tmp401_data* %179
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
