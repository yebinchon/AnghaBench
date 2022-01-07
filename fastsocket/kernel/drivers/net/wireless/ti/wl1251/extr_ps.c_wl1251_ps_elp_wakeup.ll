; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_elp_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_ps.c_wl1251_ps_elp_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32 }

@DEBUG_PSM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"waking up chip from elp\00", align 1
@jiffies = common dso_local global i64 0, align 8
@WL1251_WAKEUP_TIMEOUT = common dso_local global i32 0, align 4
@HW_ACCESS_ELP_CTRL_REG_ADDR = common dso_local global i32 0, align 4
@ELPCTRL_WAKE_UP = common dso_local global i32 0, align 4
@ELPCTRL_WLAN_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"elp wakeup timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"wakeup time: %u ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %7 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %8 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %7, i32 0, i32 1
  %9 = call i32 @cancel_delayed_work(i32* %8)
  %10 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %11 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

15:                                               ; preds = %1
  %16 = load i32, i32* @DEBUG_PSM, align 4
  %17 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @WL1251_WAKEUP_TIMEOUT, align 4
  %21 = call i64 @msecs_to_jiffies(i32 %20)
  %22 = add i64 %19, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %24 = load i32, i32* @HW_ACCESS_ELP_CTRL_REG_ADDR, align 4
  %25 = load i32, i32* @ELPCTRL_WAKE_UP, align 4
  %26 = call i32 @wl1251_write_elp(%struct.wl1251* %23, i32 %24, i32 %25)
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = load i32, i32* @HW_ACCESS_ELP_CTRL_REG_ADDR, align 4
  %29 = call i32 @wl1251_read_elp(%struct.wl1251* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %45, %15
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ELPCTRL_WLAN_READY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @time_after(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = call i32 @wl1251_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %59

45:                                               ; preds = %36
  %46 = call i32 @msleep(i32 1)
  %47 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %48 = load i32, i32* @HW_ACCESS_ELP_CTRL_REG_ADDR, align 4
  %49 = call i32 @wl1251_read_elp(%struct.wl1251* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* @DEBUG_PSM, align 4
  %52 = load i64, i64* @jiffies, align 8
  %53 = load i64, i64* %5, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @jiffies_to_msecs(i64 %54)
  %56 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %50, %41, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1251_write_elp(%struct.wl1251*, i32, i32) #1

declare dso_local i32 @wl1251_read_elp(%struct.wl1251*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
