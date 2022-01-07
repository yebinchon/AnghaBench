; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_thmc50.c_thmc50_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thmc50_data = type { i64, i32, i32, i64, i8*, i8*, i8**, i8**, i8**, i8**, i64 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@HZ = common dso_local global i32 0, align 4
@thmc50 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@THMC50_REG_CONF = common dso_local global i32 0, align 4
@THMC50_REG_CONF_PROGRAMMED = common dso_local global i32 0, align 4
@THMC50_REG_TEMP = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_MAX = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_MIN = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_CRITICAL = common dso_local global i32* null, align 8
@THMC50_REG_TEMP_DEFAULT = common dso_local global i32* null, align 8
@THMC50_REG_ANALOG_OUT = common dso_local global i32 0, align 4
@THMC50_REG_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.thmc50_data* (%struct.device*)* @thmc50_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.thmc50_data* @thmc50_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.thmc50_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.i2c_client* @to_i2c_client(%struct.device* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %3, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = call %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.thmc50_data* %12, %struct.thmc50_data** %4, align 8
  %13 = load i32, i32* @HZ, align 4
  %14 = sdiv i32 %13, 5
  %15 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %16 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @thmc50, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @HZ, align 4
  br label %23

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = add nsw i32 %14, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %27 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %26, i32 0, i32 2
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %31 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i64 @time_after(i64 %29, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %23
  %39 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %40 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %144, label %43

43:                                               ; preds = %38, %23
  %44 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %45 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %44, i32 0, i32 10
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 3, i32 2
  store i32 %49, i32* %6, align 4
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32, i32* @THMC50_REG_CONF, align 4
  %52 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @THMC50_REG_CONF_PROGRAMMED, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %125, %43
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %63 = load i32*, i32** @THMC50_REG_TEMP, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %62, i32 %67)
  %69 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %70 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %69, i32 0, i32 9
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = load i32*, i32** @THMC50_REG_TEMP_MAX, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %75, i32 %80)
  %82 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %83 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %82, i32 0, i32 8
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  store i8* %81, i8** %87, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32*, i32** @THMC50_REG_TEMP_MIN, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %88, i32 %93)
  %95 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %96 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %95, i32 0, i32 7
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %61
  %105 = load i32*, i32** @THMC50_REG_TEMP_CRITICAL, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  br label %116

110:                                              ; preds = %61
  %111 = load i32*, i32** @THMC50_REG_TEMP_DEFAULT, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  br label %116

116:                                              ; preds = %110, %104
  %117 = phi i32 [ %109, %104 ], [ %115, %110 ]
  %118 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %101, i32 %117)
  %119 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %120 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %119, i32 0, i32 6
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %57

128:                                              ; preds = %57
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = load i32, i32* @THMC50_REG_ANALOG_OUT, align 4
  %131 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %129, i32 %130)
  %132 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %133 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %135 = load i32, i32* @THMC50_REG_INTR, align 4
  %136 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %134, i32 %135)
  %137 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %138 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load i64, i64* @jiffies, align 8
  %140 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %141 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  %142 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %143 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  br label %144

144:                                              ; preds = %128, %38
  %145 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  %146 = getelementptr inbounds %struct.thmc50_data, %struct.thmc50_data* %145, i32 0, i32 2
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load %struct.thmc50_data*, %struct.thmc50_data** %4, align 8
  ret %struct.thmc50_data* %148
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.thmc50_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
