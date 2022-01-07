; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_update_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_ad7418.c_ad7418_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7418_data = type { i32, i32, i32, i64, i8**, i8** }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@AD7418_REG_CONF = common dso_local global i32 0, align 4
@AD7418_CH_TEMP = common dso_local global i32 0, align 4
@AD7418_REG_TEMP = common dso_local global i32* null, align 8
@AD7418_REG_ADC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ad7418_data* (%struct.device*)* @ad7418_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ad7418_data* @ad7418_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ad7418_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.i2c_client* @to_i2c_client(%struct.device* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = call %struct.ad7418_data* @i2c_get_clientdata(%struct.i2c_client* %10)
  store %struct.ad7418_data* %11, %struct.ad7418_data** %4, align 8
  %12 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %13 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %17 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %16, i32 0, i32 3
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
  %29 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %30 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %111, label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %35 = load i32, i32* @AD7418_REG_CONF, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %5, align 4
  %39 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %40 = load i32, i32* @AD7418_REG_CONF, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AD7418_CH_TEMP, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %39, i32 %40, i32 %43)
  %45 = call i32 @udelay(i32 30)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %63, %33
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = load i32*, i32** @AD7418_REG_TEMP, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @ad7418_read(%struct.i2c_client* %50, i32 %55)
  %57 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %58 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %57, i32 0, i32 5
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %46

66:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  store i32 4, i32* %7, align 4
  br label %67

67:                                               ; preds = %96, %66
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %70 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %101

73:                                               ; preds = %67
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = load i32, i32* @AD7418_REG_CONF, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @AD7418_REG_ADC_CH(i32 %77)
  %79 = or i32 %76, %78
  %80 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %74, i32 %75, i32 %79)
  %81 = call i32 @udelay(i32 15)
  %82 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %83 = load i32, i32* @AD7418_REG_ADC, align 4
  %84 = call i8* @ad7418_read(%struct.i2c_client* %82, i32 %83)
  %85 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %86 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %85, i32 0, i32 4
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %89 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %87, i64 %94
  store i8* %84, i8** %95, align 8
  br label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  br label %67

101:                                              ; preds = %67
  %102 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %103 = load i32, i32* @AD7418_REG_CONF, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @ad7418_write(%struct.i2c_client* %102, i32 %103, i32 %104)
  %106 = load i64, i64* @jiffies, align 8
  %107 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %108 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %110 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %101, %28
  %112 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  %113 = getelementptr inbounds %struct.ad7418_data, %struct.ad7418_data* %112, i32 0, i32 2
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load %struct.ad7418_data*, %struct.ad7418_data** %4, align 8
  ret %struct.ad7418_data* %115
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ad7418_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @ad7418_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @AD7418_REG_ADC_CH(i32) #1

declare dso_local i32 @ad7418_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
