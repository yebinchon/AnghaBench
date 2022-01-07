; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_direct_edge_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_ar9003_eeprom.c_ar9003_hw_get_direct_edge_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_eeprom = type { %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_2g* }
%struct.cal_ctl_data_5g = type { i32* }
%struct.cal_ctl_data_2g = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9300_eeprom*, i32, i32, i32)* @ar9003_hw_get_direct_edge_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar9003_hw_get_direct_edge_power(%struct.ar9300_eeprom* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar9300_eeprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cal_ctl_data_2g*, align 8
  %11 = alloca %struct.cal_ctl_data_5g*, align 8
  store %struct.ar9300_eeprom* %0, %struct.ar9300_eeprom** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %13 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %12, i32 0, i32 1
  %14 = load %struct.cal_ctl_data_2g*, %struct.cal_ctl_data_2g** %13, align 8
  store %struct.cal_ctl_data_2g* %14, %struct.cal_ctl_data_2g** %10, align 8
  %15 = load %struct.ar9300_eeprom*, %struct.ar9300_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ar9300_eeprom, %struct.ar9300_eeprom* %15, i32 0, i32 0
  %17 = load %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_5g** %16, align 8
  store %struct.cal_ctl_data_5g* %17, %struct.cal_ctl_data_5g** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %4
  %21 = load %struct.cal_ctl_data_2g*, %struct.cal_ctl_data_2g** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %21, i64 %23
  %25 = getelementptr inbounds %struct.cal_ctl_data_2g, %struct.cal_ctl_data_2g* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CTL_EDGE_TPOWER(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %44

32:                                               ; preds = %4
  %33 = load %struct.cal_ctl_data_5g*, %struct.cal_ctl_data_5g** %11, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %33, i64 %35
  %37 = getelementptr inbounds %struct.cal_ctl_data_5g, %struct.cal_ctl_data_5g* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @CTL_EDGE_TPOWER(i32 %42)
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %32, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @CTL_EDGE_TPOWER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
