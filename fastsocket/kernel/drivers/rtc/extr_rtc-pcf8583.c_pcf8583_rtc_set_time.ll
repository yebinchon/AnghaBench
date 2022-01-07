; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.i2c_client = type { i32 }
%struct.rtc_mem = type { i32, i8*, i32 }

@CMOS_YEAR = common dso_local global i32 0, align 4
@CMOS_CHECKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @pcf8583_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.rtc_mem, align 8
  %10 = alloca %struct.rtc_mem, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %6, align 8
  %15 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 0
  %16 = load i32, i32* @CMOS_YEAR, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 1
  store i8* inttoptr (i64 2 to i8*), i8** %17, align 8
  %18 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %9, i32 0, i32 2
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 0
  %22 = load i32, i32* @CMOS_CHECKSUM, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %23, align 8
  %24 = getelementptr inbounds %struct.rtc_mem, %struct.rtc_mem* %10, i32 0, i32 2
  %25 = ptrtoint i8* %8 to i32
  store i32 %25, i32* %24, align 8
  %26 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1900
  store i32 %29, i32* %11, align 4
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %32 = call i32 @pcf8583_set_datetime(%struct.i2c_client* %30, %struct.rtc_time* %31, i32 1)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %3, align 4
  br label %92

37:                                               ; preds = %2
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = call i32 @pcf8583_read_mem(%struct.i2c_client* %38, %struct.rtc_mem* %10)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %3, align 4
  br label %92

44:                                               ; preds = %37
  %45 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %46 = call i32 @pcf8583_read_mem(%struct.i2c_client* %45, %struct.rtc_mem* %9)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %92

51:                                               ; preds = %44
  %52 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %54, %57
  %59 = load i8, i8* %8, align 1
  %60 = zext i8 %59 to i32
  %61 = sub nsw i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %8, align 1
  %63 = load i32, i32* %11, align 4
  %64 = udiv i32 %63, 100
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  store i8 %65, i8* %66, align 1
  %67 = load i32, i32* %11, align 4
  %68 = urem i32 %67, 100
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %73, %76
  %78 = load i8, i8* %8, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %79, %77
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %8, align 1
  %82 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %83 = call i32 @pcf8583_write_mem(%struct.i2c_client* %82, %struct.rtc_mem* %9)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %51
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %51
  %89 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %90 = call i32 @pcf8583_write_mem(%struct.i2c_client* %89, %struct.rtc_mem* %10)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %86, %49, %42, %35
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @pcf8583_set_datetime(%struct.i2c_client*, %struct.rtc_time*, i32) #1

declare dso_local i32 @pcf8583_read_mem(%struct.i2c_client*, %struct.rtc_mem*) #1

declare dso_local i32 @pcf8583_write_mem(%struct.i2c_client*, %struct.rtc_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
