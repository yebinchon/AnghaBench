; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_read_alarm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-ds1374.c_ds1374_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, i32, i32 }
%struct.i2c_client = type { i64 }
%struct.ds1374 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DS1374_REG_CR = common dso_local global i32 0, align 4
@DS1374_REG_SR = common dso_local global i32 0, align 4
@DS1374_REG_TOD0 = common dso_local global i32 0, align 4
@DS1374_REG_WDALM0 = common dso_local global i32 0, align 4
@DS1374_REG_CR_WACE = common dso_local global i32 0, align 4
@DS1374_REG_SR_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @ds1374_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1374_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ds1374*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
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
  br label %85

24:                                               ; preds = %2
  %25 = load %struct.ds1374*, %struct.ds1374** %7, align 8
  %26 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %29 = load i32, i32* @DS1374_REG_CR, align 4
  %30 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %80

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %36 = load i32, i32* @DS1374_REG_SR, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %12, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %80

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %43 = load i32, i32* @DS1374_REG_TOD0, align 4
  %44 = call i32 @ds1374_read_rtc(%struct.i2c_client* %42, i64* %8, i32 %43, i32 4)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %80

48:                                               ; preds = %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = load i32, i32* @DS1374_REG_WDALM0, align 4
  %51 = call i32 @ds1374_read_rtc(%struct.i2c_client* %49, i64* %9, i32 %50, i32 3)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %80

55:                                               ; preds = %48
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %60 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %59, i32 0, i32 2
  %61 = call i32 @rtc_time_to_tm(i64 %58, i32* %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @DS1374_REG_CR_WACE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %70 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @DS1374_REG_SR_AF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %79 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %55, %54, %47, %40, %33
  %81 = load %struct.ds1374*, %struct.ds1374** %7, align 8
  %82 = getelementptr inbounds %struct.ds1374, %struct.ds1374* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %21
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.ds1374* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ds1374_read_rtc(%struct.i2c_client*, i64*, i32, i32) #1

declare dso_local i32 @rtc_time_to_tm(i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
