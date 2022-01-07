; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-sh.c_sh_rtc_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.sh_rtc = type { i32, i32, i64 }

@RCR2 = common dso_local global i64 0, align 8
@RCR2_RESET = common dso_local global i32 0, align 4
@RCR2_START = common dso_local global i32 0, align 4
@RSECCNT = common dso_local global i64 0, align 8
@RMINCNT = common dso_local global i64 0, align 8
@RHRCNT = common dso_local global i64 0, align 8
@RWKCNT = common dso_local global i64 0, align 8
@RDAYCNT = common dso_local global i64 0, align 8
@RMONCNT = common dso_local global i64 0, align 8
@RTC_CAP_4_DIGIT_YEAR = common dso_local global i32 0, align 4
@RYRCNT = common dso_local global i64 0, align 8
@RCR2_RTCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @sh_rtc_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_rtc_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_rtc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.sh_rtc* %12, %struct.sh_rtc** %6, align 8
  %13 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %14 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %17 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RCR2, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readb(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @RCR2_RESET, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @RCR2_START, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %31 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RCR2, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeb(i32 %29, i64 %34)
  %36 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bin2bcd(i32 %38)
  %40 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RSECCNT, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writeb(i32 %39, i64 %44)
  %46 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bin2bcd(i32 %48)
  %50 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %51 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RMINCNT, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writeb(i32 %49, i64 %54)
  %56 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %57 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bin2bcd(i32 %58)
  %60 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %61 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RHRCNT, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writeb(i32 %59, i64 %64)
  %66 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bin2bcd(i32 %68)
  %70 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %71 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RWKCNT, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writeb(i32 %69, i64 %74)
  %76 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bin2bcd(i32 %78)
  %80 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %81 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RDAYCNT, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writeb(i32 %79, i64 %84)
  %86 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = call i32 @bin2bcd(i32 %89)
  %91 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %92 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @RMONCNT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writeb(i32 %90, i64 %95)
  %97 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %98 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RTC_CAP_4_DIGIT_YEAR, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %2
  %104 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %105 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1900
  %108 = sdiv i32 %107, 100
  %109 = call i32 @bin2bcd(i32 %108)
  %110 = shl i32 %109, 8
  %111 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = srem i32 %113, 100
  %115 = call i32 @bin2bcd(i32 %114)
  %116 = or i32 %110, %115
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %119 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @RYRCNT, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writew(i32 %117, i64 %122)
  br label %137

124:                                              ; preds = %2
  %125 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %126 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = srem i32 %127, 100
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @bin2bcd(i32 %129)
  %131 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %132 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @RYRCNT, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writeb(i32 %130, i64 %135)
  br label %137

137:                                              ; preds = %124, %103
  %138 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %139 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @RCR2, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readb(i64 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @RCR2_RESET, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %7, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @RCR2_RTCEN, align 4
  %149 = load i32, i32* @RCR2_START, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %155 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @RCR2, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @writeb(i32 %153, i64 %158)
  %160 = load %struct.sh_rtc*, %struct.sh_rtc** %6, align 8
  %161 = getelementptr inbounds %struct.sh_rtc, %struct.sh_rtc* %160, i32 0, i32 1
  %162 = call i32 @spin_unlock_irq(i32* %161)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.sh_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
