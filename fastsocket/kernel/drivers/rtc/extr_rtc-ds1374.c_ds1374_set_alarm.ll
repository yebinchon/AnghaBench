; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_set_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.i2c_client = type { i64 }
%struct.ds1374 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DS1374_REG_CR = common dso_local global i32 0, align 4
@DS1374_REG_CR_WACE = common dso_local global i32 0, align 4
@DS1374_REG_WDALM0 = common dso_local global i32 0, align 4
@DS1374_REG_CR_AIE = common dso_local global i32 0, align 4
@DS1374_REG_CR_WDALM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1374_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ds1374*, align 8
  %8 = alloca %struct.rtc_time, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = call %struct.ds1374* @i2c_get_clientdata(%struct.i2c_client* %15)
  store %struct.ds1374* %16, %struct.ds1374** %7, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @ds1374_read_time(%struct.device* %25, %struct.rtc_time* %8)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %3, align 4
  br label %100

31:                                               ; preds = %24
  %32 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %33 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %32, i32 0, i32 1
  %34 = call i32 @rtc_tm_to_time(%struct.rtc_time* %33, i64* %9)
  %35 = call i32 @rtc_tm_to_time(%struct.rtc_time* %8, i64* %10)
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @time_before_eq(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i64 1, i64* %9, align 8
  br label %45

41:                                               ; preds = %31
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load %struct.ds1374*, %struct.ds1374** %7, align 8
  %47 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = load i32, i32* @DS1374_REG_CR, align 4
  %51 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %95

55:                                               ; preds = %45
  %56 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = load i32, i32* @DS1374_REG_CR, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %60, i32 %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %95

67:                                               ; preds = %55
  %68 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @DS1374_REG_WDALM0, align 4
  %71 = call i32 @ds1374_write_rtc(%struct.i2c_client* %68, i64 %69, i32 %70, i32 3)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %95

75:                                               ; preds = %67
  %76 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %77 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %75
  %81 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %82 = load i32, i32* @DS1374_REG_CR_AIE, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @DS1374_REG_CR_WDALM, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %11, align 4
  %90 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %91 = load i32, i32* @DS1374_REG_CR, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %90, i32 %91, i32 %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %80, %75
  br label %95

95:                                               ; preds = %94, %74, %66, %54
  %96 = load %struct.ds1374*, %struct.ds1374** %7, align 8
  %97 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %95, %29, %21
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1374* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ds1374_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i32 @rtc_tm_to_time(%struct.rtc_time*, i64*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ds1374_write_rtc(%struct.i2c_client*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
