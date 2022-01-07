; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t80.c_m41t80_set_datetime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-m41t80.c_m41t80_set_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@M41T80_DATETIME_REG_SIZE = common dso_local global i32 0, align 4
@M41T80_REG_SEC = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@M41T80_REG_SSEC = common dso_local global i64 0, align 8
@M41T80_REG_MIN = common dso_local global i64 0, align 8
@M41T80_REG_HOUR = common dso_local global i64 0, align 8
@M41T80_REG_WDAY = common dso_local global i64 0, align 8
@M41T80_REG_DAY = common dso_local global i64 0, align 8
@M41T80_REG_MON = common dso_local global i64 0, align 8
@M41T80_REG_YEAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"write error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.rtc_time*)* @m41t80_set_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m41t80_set_datetime(%struct.i2c_client* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1 x i32], align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  %11 = alloca [1 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %13 = load i32, i32* @M41T80_DATETIME_REG_SIZE, align 4
  %14 = add nsw i32 1, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32* %18, i32** %8, align 8
  %19 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %20 = load i32, i32* @M41T80_REG_SEC, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 3
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = load i32, i32* @M41T80_DATETIME_REG_SIZE, align 4
  %33 = load i32, i32* @M41T80_REG_SEC, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %31, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @M41T80_REG_SEC, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %35, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  %41 = load i32, i32* @I2C_M_RD, align 4
  store i32 %41, i32* %40, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 0
  %48 = load i32, i32* @M41T80_DATETIME_REG_SIZE, align 4
  %49 = add nsw i32 1, %48
  store i32 %49, i32* %47, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  store i32* %17, i32** %50, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 3
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %52, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %60 = call i32 @i2c_transfer(i32 %58, %struct.i2c_msg* %59, i32 2)
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %2
  %63 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %175

68:                                               ; preds = %2
  %69 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %69, align 16
  %70 = load i32*, i32** %8, align 8
  %71 = load i64, i64* @M41T80_REG_SSEC, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  %73 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @bin2bcd(i32 %75)
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @M41T80_REG_SEC, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -128
  %83 = or i32 %76, %82
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @M41T80_REG_SEC, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  %88 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bin2bcd(i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load i64, i64* @M41T80_REG_MIN, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -128
  %97 = or i32 %91, %96
  %98 = load i32*, i32** %8, align 8
  %99 = load i64, i64* @M41T80_REG_MIN, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %102 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @bin2bcd(i32 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i64, i64* @M41T80_REG_HOUR, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, -64
  %110 = or i32 %104, %109
  %111 = load i32*, i32** %8, align 8
  %112 = load i64, i64* @M41T80_REG_HOUR, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32 %110, i32* %113, align 4
  %114 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 7
  %118 = load i32*, i32** %8, align 8
  %119 = load i64, i64* @M41T80_REG_WDAY, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -8
  %123 = or i32 %117, %122
  %124 = load i32*, i32** %8, align 8
  %125 = load i64, i64* @M41T80_REG_WDAY, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %128 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @bin2bcd(i32 %129)
  %131 = load i32*, i32** %8, align 8
  %132 = load i64, i64* @M41T80_REG_DAY, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, -64
  %136 = or i32 %130, %135
  %137 = load i32*, i32** %8, align 8
  %138 = load i64, i64* @M41T80_REG_DAY, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32 %136, i32* %139, align 4
  %140 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %141 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  %144 = call i32 @bin2bcd(i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load i64, i64* @M41T80_REG_MON, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, -32
  %150 = or i32 %144, %149
  %151 = load i32*, i32** %8, align 8
  %152 = load i64, i64* @M41T80_REG_MON, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  store i32 %150, i32* %153, align 4
  %154 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %155 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %156, 100
  %158 = call i32 @bin2bcd(i32 %157)
  %159 = load i32*, i32** %8, align 8
  %160 = load i64, i64* @M41T80_REG_YEAR, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %158, i32* %161, align 4
  %162 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %163 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %11, i64 0, i64 0
  %166 = call i32 @i2c_transfer(i32 %164, %struct.i2c_msg* %165, i32 1)
  %167 = icmp ne i32 %166, 1
  br i1 %167, label %168, label %174

168:                                              ; preds = %68
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = call i32 @dev_err(i32* %170, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %175

174:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %175

175:                                              ; preds = %174, %168, %62
  %176 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @bin2bcd(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
