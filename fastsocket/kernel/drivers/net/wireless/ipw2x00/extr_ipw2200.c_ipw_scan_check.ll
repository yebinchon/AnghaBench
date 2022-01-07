; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_scan_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_scan_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32 }

@STATUS_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Scan completion watchdog resetting adapter after (%dms).\0A\00", align 1
@IPW_SCAN_CHECK_WATCHDOG = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Scan completion watchdog aborting scan after (%dms).\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipw_scan_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_scan_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipw_priv*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ipw_priv*
  store %struct.ipw_priv* %5, %struct.ipw_priv** %3, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @STATUS_SCAN_ABORTING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @IPW_SCAN_CHECK_WATCHDOG, align 4
  %14 = call i32 @jiffies_to_msecs(i32 %13)
  %15 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 2
  %18 = call i32 @schedule_work(i32* %17)
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @STATUS_SCANNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load i32, i32* @IPW_SCAN_CHECK_WATCHDOG, align 4
  %28 = call i32 @jiffies_to_msecs(i32 %27)
  %29 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %31 = call i32 @ipw_abort_scan(%struct.ipw_priv* %30)
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 1
  %34 = load i32, i32* @HZ, align 4
  %35 = call i32 @schedule_delayed_work(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %19
  br label %37

37:                                               ; preds = %36, %12
  ret void
}

declare dso_local i32 @IPW_DEBUG_SCAN(i8*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @ipw_abort_scan(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
