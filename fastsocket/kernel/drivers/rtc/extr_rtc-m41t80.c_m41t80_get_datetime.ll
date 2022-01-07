; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t80.c_m41t80_get_datetime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t80.c_m41t80_get_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.rtc_time = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@M41T80_DATETIME_REG_SIZE = common dso_local global i32 0, align 4
@M41T80_REG_SEC = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@M41T80_REG_MIN = common dso_local global i64 0, align 8
@M41T80_REG_HOUR = common dso_local global i64 0, align 8
@M41T80_REG_DAY = common dso_local global i64 0, align 8
@M41T80_REG_WDAY = common dso_local global i64 0, align 8
@M41T80_REG_MON = common dso_local global i64 0, align 8
@M41T80_REG_YEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*)* @m41t80_get_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_get_datetime(%struct.i2c_client* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x i32], align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %11 = load i32, i32* @M41T80_DATETIME_REG_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %16 = load i32, i32* @M41T80_REG_SEC, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 1
  %20 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32* %20, i32** %19, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 3
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 0
  %28 = load i32, i32* @M41T80_DATETIME_REG_SIZE, align 4
  %29 = load i32, i32* @M41T80_REG_SEC, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 1
  %32 = load i32, i32* @M41T80_REG_SEC, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %14, i64 %33
  store i32* %34, i32** %31, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  %36 = load i32, i32* @I2C_M_RD, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 3
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %45 = call i64 @i2c_transfer(i32 %43, %struct.i2c_msg* %44, i32 2)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %2
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %104

53:                                               ; preds = %2
  %54 = load i32, i32* @M41T80_REG_SEC, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %14, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 127
  %59 = call i8* @bcd2bin(i32 %58)
  %60 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %61 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i64, i64* @M41T80_REG_MIN, align 8
  %63 = getelementptr inbounds i32, i32* %14, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  %66 = call i8* @bcd2bin(i32 %65)
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* @M41T80_REG_HOUR, align 8
  %70 = getelementptr inbounds i32, i32* %14, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 63
  %73 = call i8* @bcd2bin(i32 %72)
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load i64, i64* @M41T80_REG_DAY, align 8
  %77 = getelementptr inbounds i32, i32* %14, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 63
  %80 = call i8* @bcd2bin(i32 %79)
  %81 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %82 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* @M41T80_REG_WDAY, align 8
  %84 = getelementptr inbounds i32, i32* %14, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 7
  %87 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %88 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i64, i64* @M41T80_REG_MON, align 8
  %90 = getelementptr inbounds i32, i32* %14, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 31
  %93 = call i8* @bcd2bin(i32 %92)
  %94 = getelementptr i8, i8* %93, i64 -1
  %95 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load i64, i64* @M41T80_REG_YEAR, align 8
  %98 = getelementptr inbounds i32, i32* %14, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @bcd2bin(i32 %99)
  %101 = getelementptr i8, i8* %100, i64 100
  %102 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %104

104:                                              ; preds = %53, %47
  %105 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i8* @bcd2bin(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
