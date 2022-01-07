; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2100.c_ipw2100_set_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.ipw2100_wpa_assoc_frame = type { i32 }
%struct.host_command = type { i32, i32, i32, i32 }

@SET_WPA_IE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SET_WPA_IE\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, %struct.ipw2100_wpa_assoc_frame*, i32)* @ipw2100_set_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_wpa_ie(%struct.ipw2100_priv* %0, %struct.ipw2100_wpa_assoc_frame* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca %struct.ipw2100_wpa_assoc_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_command, align 4
  %9 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %5, align 8
  store %struct.ipw2100_wpa_assoc_frame* %1, %struct.ipw2100_wpa_assoc_frame** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 0
  store i32 4, i32* %10, align 4
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 3
  %14 = load i32, i32* @SET_WPA_IE, align 4
  store i32 %14, i32* %13, align 4
  %15 = call i32 @IPW_DEBUG_HC(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %20 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %45

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %3
  %27 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ipw2100_wpa_assoc_frame*, %struct.ipw2100_wpa_assoc_frame** %6, align 8
  %30 = call i32 @memcpy(i32 %28, %struct.ipw2100_wpa_assoc_frame* %29, i32 4)
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %32 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %31, %struct.host_command* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %26
  %36 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %37 = call i64 @ipw2100_enable_adapter(%struct.ipw2100_priv* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @IPW_DEBUG_HC(i8*) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @memcpy(i32, %struct.ipw2100_wpa_assoc_frame*, i32) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i64 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
