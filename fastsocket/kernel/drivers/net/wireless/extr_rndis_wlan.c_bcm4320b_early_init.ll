; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_bcm4320b_early_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_rndis_wlan.c_bcm4320b_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.rndis_wlan_private = type { i8*, i32, i32, i32, i32, i64, i64 }

@RNDIS_BCM4320B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"FrameBursting\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Afterburner\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"PowerSaveMode\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"PwrOut\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"RoamTrigger\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"RoamDelta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @bcm4320b_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm4320b_early_init(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.rndis_wlan_private*, align 8
  %4 = alloca [8 x i8], align 1
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = call %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet* %5)
  store %struct.rndis_wlan_private* %6, %struct.rndis_wlan_private** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = load i32, i32* @RNDIS_BCM4320B, align 4
  %9 = call i32 @rndis_copy_module_params(%struct.usbnet* %7, i32 %8)
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %12 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %16 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %17 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %22 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %24 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %25 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %30 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  %31 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %32 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %33 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %34)
  %36 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %38 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %37)
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %40 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %41 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %46 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %45)
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %48 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %49 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %54 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %53)
  %55 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %56 = load %struct.rndis_wlan_private*, %struct.rndis_wlan_private** %3, align 8
  %57 = getelementptr inbounds %struct.rndis_wlan_private, %struct.rndis_wlan_private* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sprintf(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  %60 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %61 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %62 = call i32 @rndis_set_config_parameter_str(%struct.usbnet* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %61)
  ret i32 0
}

declare dso_local %struct.rndis_wlan_private* @get_rndis_wlan_priv(%struct.usbnet*) #1

declare dso_local i32 @rndis_copy_module_params(%struct.usbnet*, i32) #1

declare dso_local i32 @rndis_set_config_parameter_str(%struct.usbnet*, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
