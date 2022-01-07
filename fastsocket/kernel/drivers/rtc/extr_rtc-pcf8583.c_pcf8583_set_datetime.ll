; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_set_datetime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-pcf8583.c_pcf8583_set_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rtc_time = type { i32, i32, i64, i64, i64, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*, i32)* @pcf8583_set_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8583_set_datetime(%struct.i2c_client* %0, %struct.rtc_time* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.rtc_time*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 6, i32* %10, align 4
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  store i8 0, i8* %11, align 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call i32 @get_ctrl(%struct.i2c_client* %12)
  %14 = or i32 %13, 128
  %15 = trunc i32 %14 to i8
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %17, align 1
  %18 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @bin2bcd(i64 %20)
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 3
  store i8 %22, i8* %23, align 1
  %24 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bin2bcd(i64 %26)
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 4
  store i8 %28, i8* %29, align 1
  %30 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @bin2bcd(i64 %32)
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 5
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  %39 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @bin2bcd(i64 %41)
  %43 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 6
  %47 = or i32 %42, %46
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 6
  store i8 %48, i8* %49, align 1
  %50 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %51 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @bin2bcd(i64 %53)
  %55 = load %struct.rtc_time*, %struct.rtc_time** %6, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 5
  %59 = or i32 %54, %58
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 7
  store i8 %60, i8* %61, align 1
  br label %62

62:                                               ; preds = %38, %3
  %63 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @i2c_master_send(%struct.i2c_client* %63, i8* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %89

73:                                               ; preds = %62
  %74 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %75 = call i32 @get_ctrl(%struct.i2c_client* %74)
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 1
  store i8 %76, i8* %77, align 1
  %78 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %80 = call i32 @i2c_master_send(%struct.i2c_client* %78, i8* %79, i32 2)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  br label %87

84:                                               ; preds = %73
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ 0, %83 ], [ %86, %84 ]
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %70
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @get_ctrl(%struct.i2c_client*) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
