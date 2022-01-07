; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"Setting channel to ANY (0)\0A\00", align 1
@CFG_STATIC_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Attempting to associate with new parameters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Request to set channel to current value (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Setting channel to %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"[re]association triggered due to channel change.\0A\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@STATUS_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i64)* @ipw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_set_channel(%struct.ipw_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %18 = call i32 @ipw_associate(%struct.ipw_priv* %17)
  store i32 0, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = load i32, i32* @CFG_STATIC_CHANNEL, align 4
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  store i32 0, i32* %3, align 4
  br label %48

33:                                               ; preds = %19
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = call i32 @IPW_DEBUG_ASSOC(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %41 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %42 = call i32 @ipw_disassociate(%struct.ipw_priv* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %46 = call i32 @ipw_associate(%struct.ipw_priv* %45)
  br label %47

47:                                               ; preds = %44, %33
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %30, %8
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @IPW_DEBUG_ASSOC(i8*) #1

declare dso_local i32 @ipw_associate(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_disassociate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
