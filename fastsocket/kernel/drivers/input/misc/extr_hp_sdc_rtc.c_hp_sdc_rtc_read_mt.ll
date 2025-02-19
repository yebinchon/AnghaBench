; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@HP_SDC_CMD_LOAD_MT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*)* @hp_sdc_rtc_read_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_read_mt(%struct.timeval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %6 = load i32, i32* @HP_SDC_CMD_LOAD_MT, align 4
  %7 = call i64 @hp_sdc_rtc_read_i8042timer(i32 %6, i32 3)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 16777215
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 100
  %17 = mul nsw i32 %16, 10000
  %18 = load %struct.timeval*, %struct.timeval** %3, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 100
  %22 = sext i32 %21 to i64
  %23 = load %struct.timeval*, %struct.timeval** %3, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @hp_sdc_rtc_read_i8042timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
