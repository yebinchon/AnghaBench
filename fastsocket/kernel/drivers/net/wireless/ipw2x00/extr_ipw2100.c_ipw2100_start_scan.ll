; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_start_scan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_start_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_command = type { i32, i64*, i32, i32 }

@BROADCAST_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"START_SCAN\0A\00", align 1
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Scan requested while already in scan...\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"starting scan\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*)* @ipw2100_start_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_start_scan(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca %struct.host_command, align 8
  %5 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  %6 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 0
  store i32 4, i32* %6, align 8
  %7 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 1
  store i64* null, i64** %7, align 8
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 3
  %10 = load i32, i32* @BROADCAST_SCAN, align 4
  store i32 %10, i32* %9, align 4
  %11 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %4, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IW_MODE_MONITOR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %54

23:                                               ; preds = %1
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STATUS_SCANNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %54

32:                                               ; preds = %23
  %33 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @IPW_DEBUG_SCAN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @STATUS_SCANNING, align 4
  %36 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %41 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %40, %struct.host_command* %4)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %32
  %45 = load i32, i32* @STATUS_SCANNING, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %32
  %52 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %30, %22
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @IPW_DEBUG_SCAN(i8*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
