; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6900.c_max6900_i2c_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6900.c_max6900_i2c_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX6900_REG_LEN = common dso_local global i32 0, align 4
@MAX6900_REG_SC = common dso_local global i64 0, align 8
@MAX6900_REG_MN = common dso_local global i64 0, align 8
@MAX6900_REG_HR = common dso_local global i64 0, align 8
@MAX6900_REG_DT = common dso_local global i64 0, align 8
@MAX6900_REG_MO = common dso_local global i64 0, align 8
@MAX6900_REG_DW = common dso_local global i64 0, align 8
@MAX6900_REG_YR = common dso_local global i64 0, align 8
@MAX6900_REG_CENTURY = common dso_local global i64 0, align 8
@MAX6900_REG_CT_WP = common dso_local global i32 0, align 4
@MAX6900_REG_CT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*)* @max6900_i2c_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6900_i2c_set_time(%struct.i2c_client* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load i32, i32* @MAX6900_REG_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = call i32 @max6900_i2c_clear_write_protect(%struct.i2c_client* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bin2bcd(i32 %23)
  %25 = load i64, i64* @MAX6900_REG_SC, align 8
  %26 = getelementptr inbounds i32, i32* %13, i64 %25
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bin2bcd(i32 %29)
  %31 = load i64, i64* @MAX6900_REG_MN, align 8
  %32 = getelementptr inbounds i32, i32* %13, i64 %31
  store i32 %30, i32* %32, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bin2bcd(i32 %35)
  %37 = load i64, i64* @MAX6900_REG_HR, align 8
  %38 = getelementptr inbounds i32, i32* %13, i64 %37
  store i32 %36, i32* %38, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bin2bcd(i32 %41)
  %43 = load i64, i64* @MAX6900_REG_DT, align 8
  %44 = getelementptr inbounds i32, i32* %13, i64 %43
  store i32 %42, i32* %44, align 4
  %45 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @bin2bcd(i32 %48)
  %50 = load i64, i64* @MAX6900_REG_MO, align 8
  %51 = getelementptr inbounds i32, i32* %13, i64 %50
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %53 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = load i64, i64* @MAX6900_REG_DW, align 8
  %57 = getelementptr inbounds i32, i32* %13, i64 %56
  store i32 %55, i32* %57, align 4
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %60, 100
  %62 = call i32 @bin2bcd(i32 %61)
  %63 = load i64, i64* @MAX6900_REG_YR, align 8
  %64 = getelementptr inbounds i32, i32* %13, i64 %63
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1900
  %69 = sdiv i32 %68, 100
  %70 = call i32 @bin2bcd(i32 %69)
  %71 = load i64, i64* @MAX6900_REG_CENTURY, align 8
  %72 = getelementptr inbounds i32, i32* %13, i64 %71
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @MAX6900_REG_CT_WP, align 4
  %74 = load i64, i64* @MAX6900_REG_CT, align 8
  %75 = getelementptr inbounds i32, i32* %13, i64 %74
  store i32 %73, i32* %75, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %77 = call i32 @max6900_i2c_write_regs(%struct.i2c_client* %76, i32* %13)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %20
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

82:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %80, %18
  %84 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @max6900_i2c_clear_write_protect(%struct.i2c_client*) #2

declare dso_local i32 @bin2bcd(i32) #2

declare dso_local i32 @max6900_i2c_write_regs(%struct.i2c_client*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
