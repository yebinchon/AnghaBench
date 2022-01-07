; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_adhoc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_adhoc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CFG_ADHOC_PERSIST = common dso_local global i32 0, align 4
@IPW_DL_INFO = common dso_local global i32 0, align 4
@IPW_DL_NOTIF = common dso_local global i32 0, align 4
@IPW_DL_STATE = common dso_local global i32 0, align 4
@IPW_DL_ASSOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Missed beacon: %d - disassociate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ipw_adhoc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_adhoc_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ipw_priv*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ipw_priv*
  store %struct.ipw_priv* %5, %struct.ipw_priv** %3, align 8
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = sext i32 %8 to i64
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CFG_ADHOC_PERSIST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @IPW_DL_INFO, align 4
  %24 = load i32, i32* @IPW_DL_NOTIF, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IPW_DL_STATE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IPW_DL_ASSOC, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @IPW_DEBUG(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %35 = call i32 @ipw_remove_current_network(%struct.ipw_priv* %34)
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %37 = call i32 @ipw_disassociate(%struct.ipw_priv* %36)
  br label %47

38:                                               ; preds = %15, %1
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 3
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = call i32 @schedule_delayed_work(i32* %40, i32 %45)
  br label %47

47:                                               ; preds = %38, %22
  ret void
}

declare dso_local i32 @IPW_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @ipw_remove_current_network(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
