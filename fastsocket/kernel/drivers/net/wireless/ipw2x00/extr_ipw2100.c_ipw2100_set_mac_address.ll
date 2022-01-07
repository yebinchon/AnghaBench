; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.host_command = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@ADAPTER_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SET_MAC_ADDRESS\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@CFG_CUSTOM_MAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_mac_address(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw2100_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.host_command, align 4
  %6 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 1
  %9 = load i32, i32* @ETH_ALEN, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 3
  %12 = load i32, i32* @ADAPTER_ADDRESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CFG_CUSTOM_MAC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %25 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = call i32 @memcpy(i32 %23, i32 %26, i32 %27)
  %29 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32 %33, i32 %36, i32 %37)
  br label %49

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.host_command, %struct.host_command* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %43 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %21
  %50 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %3, align 8
  %51 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %50, %struct.host_command* %5)
  store i32 %51, i32* %6, align 4
  %52 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
