; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_acer_rfkill_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@RFKILL_TYPE_WLAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"acer-wireless\00", align 1
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@wireless_rfkill = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@RFKILL_TYPE_BLUETOOTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"acer-bluetooth\00", align 1
@bluetooth_rfkill = common dso_local global i32 0, align 4
@acer_rfkill_work = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acer_rfkill_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_rfkill_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = load %struct.device*, %struct.device** %3, align 8
  %5 = load i32, i32* @RFKILL_TYPE_WLAN, align 4
  %6 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %7 = call i32 @acer_rfkill_register(%struct.device* %4, i32 %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %6)
  store i32 %7, i32* @wireless_rfkill, align 4
  %8 = load i32, i32* @wireless_rfkill, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @wireless_rfkill, align 4
  %13 = call i32 @PTR_ERR(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %16 = call i64 @has_cap(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load i32, i32* @RFKILL_TYPE_BLUETOOTH, align 4
  %21 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %22 = call i32 @acer_rfkill_register(%struct.device* %19, i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* @bluetooth_rfkill, align 4
  %23 = load i32, i32* @bluetooth_rfkill, align 4
  %24 = call i64 @IS_ERR(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* @wireless_rfkill, align 4
  %28 = call i32 @rfkill_unregister(i32 %27)
  %29 = load i32, i32* @wireless_rfkill, align 4
  %30 = call i32 @rfkill_destroy(i32 %29)
  %31 = load i32, i32* @bluetooth_rfkill, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %38

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* @HZ, align 4
  %36 = call i32 @round_jiffies_relative(i32 %35)
  %37 = call i32 @schedule_delayed_work(i32* @acer_rfkill_work, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %26, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @acer_rfkill_register(%struct.device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @has_cap(i32) #1

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
