; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bcm63xx_enet.c_bcm_enet_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32, i32 }

@bcm_enet_driver_name = common dso_local global i8* null, align 8
@bcm_enet_driver_version = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bcm63xx\00", align 1
@BCM_ENET_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @bcm_enet_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_enet_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %5 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %6 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** @bcm_enet_driver_name, align 8
  %9 = call i32 @strncpy(i32 %7, i8* %8, i32 32)
  %10 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** @bcm_enet_driver_version, align 8
  %14 = call i32 @strncpy(i32 %12, i8* %13, i32 32)
  %15 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strncpy(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 32)
  %19 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strncpy(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 32)
  %23 = load i32, i32* @BCM_ENET_STATS_LEN, align 4
  %24 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
