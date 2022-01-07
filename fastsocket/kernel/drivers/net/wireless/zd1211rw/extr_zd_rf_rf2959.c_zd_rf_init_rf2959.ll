; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_rf2959.c_zd_rf_init_rf2959.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_rf2959.c_zd_rf_init_rf2959.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32, i32, i32, i32 }
%struct.zd_chip = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"RF2959 is currently not supported for ZD1211B devices\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@rf2959_init_hw = common dso_local global i32 0, align 4
@rf2959_set_channel = common dso_local global i32 0, align 4
@rf2959_switch_radio_on = common dso_local global i32 0, align 4
@rf2959_switch_radio_off = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rf_init_rf2959(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %5 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %6 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %5)
  store %struct.zd_chip* %6, %struct.zd_chip** %4, align 8
  %7 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %8 = call i64 @zd_chip_is_zd1211b(%struct.zd_chip* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.zd_chip*, %struct.zd_chip** %4, align 8
  %12 = call i32 @zd_chip_dev(%struct.zd_chip* %11)
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %29

16:                                               ; preds = %1
  %17 = load i32, i32* @rf2959_init_hw, align 4
  %18 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %19 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @rf2959_set_channel, align 4
  %21 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %22 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @rf2959_switch_radio_on, align 4
  %24 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %25 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @rf2959_switch_radio_off, align 4
  %27 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %28 = getelementptr inbounds %struct.zd_rf, %struct.zd_rf* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %16, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i64 @zd_chip_is_zd1211b(%struct.zd_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @zd_chip_dev(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
