; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_scan_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_isr_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"scan complete\0A\00", align 1
@STATUS_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*, i32)* @isr_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_scan_complete(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @STATUS_SCANNING, align 4
  %13 = xor i32 %12, -1
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %2
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 1
  %25 = call i32 @delayed_work_pending(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 1
  %30 = call i32 @msecs_to_jiffies(i32 4000)
  %31 = call i32 @round_jiffies_relative(i32 %30)
  %32 = call i32 @schedule_delayed_work(i32* %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  br label %43

34:                                               ; preds = %2
  %35 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %38 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %37, i32 0, i32 1
  %39 = call i32 @cancel_delayed_work(i32* %38)
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 0
  %42 = call i32 @schedule_work(i32* %41)
  br label %43

43:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @IPW_DEBUG_SCAN(i8*) #1

declare dso_local i32 @delayed_work_pending(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
