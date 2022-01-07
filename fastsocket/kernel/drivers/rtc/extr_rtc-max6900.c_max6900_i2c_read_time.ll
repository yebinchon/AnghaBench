; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6900.c_max6900_i2c_read_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-max6900.c_max6900_i2c_read_time.c"
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
@MAX6900_REG_YR = common dso_local global i64 0, align 8
@MAX6900_REG_CENTURY = common dso_local global i64 0, align 8
@MAX6900_REG_DW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*)* @max6900_i2c_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max6900_i2c_read_time(%struct.i2c_client* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %10 = load i32, i32* @MAX6900_REG_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = call i32 @max6900_i2c_read_regs(%struct.i2c_client* %14, i32* %13)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load i64, i64* @MAX6900_REG_SC, align 8
  %22 = getelementptr inbounds i32, i32* %13, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bcd2bin(i32 %23)
  %25 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* @MAX6900_REG_MN, align 8
  %28 = getelementptr inbounds i32, i32* %13, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bcd2bin(i32 %29)
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @MAX6900_REG_HR, align 8
  %34 = getelementptr inbounds i32, i32* %13, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 63
  %37 = call i32 @bcd2bin(i32 %36)
  %38 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* @MAX6900_REG_DT, align 8
  %41 = getelementptr inbounds i32, i32* %13, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bcd2bin(i32 %42)
  %44 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %45 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @MAX6900_REG_MO, align 8
  %47 = getelementptr inbounds i32, i32* %13, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bcd2bin(i32 %48)
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* @MAX6900_REG_YR, align 8
  %54 = getelementptr inbounds i32, i32* %13, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @bcd2bin(i32 %55)
  %57 = load i64, i64* @MAX6900_REG_CENTURY, align 8
  %58 = getelementptr inbounds i32, i32* %13, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bcd2bin(i32 %59)
  %61 = mul nsw i32 %60, 100
  %62 = add nsw i32 %56, %61
  %63 = sub nsw i32 %62, 1900
  %64 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i64, i64* @MAX6900_REG_DW, align 8
  %67 = getelementptr inbounds i32, i32* %13, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bcd2bin(i32 %68)
  %70 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %72

72:                                               ; preds = %20, %18
  %73 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @max6900_i2c_read_regs(%struct.i2c_client*, i32*) #2

declare dso_local i32 @bcd2bin(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
