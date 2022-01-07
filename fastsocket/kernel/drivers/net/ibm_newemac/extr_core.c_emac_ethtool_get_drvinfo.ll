; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i8*, i32, i32, i32, i32, i32 }
%struct.emac_instance = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"ibm_emac\00", align 1
@DRV_VERSION = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"PPC 4xx EMAC-%d %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @emac_ethtool_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_ethtool_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.emac_instance*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %6)
  store %struct.emac_instance* %7, %struct.emac_instance** %5, align 8
  %8 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strcpy(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** @DRV_VERSION, align 8
  %16 = call i32 @strcpy(i32 %14, i8* %15)
  %17 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.emac_instance*, %struct.emac_instance** %5, align 8
  %28 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @sprintf(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8* %33)
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @emac_ethtool_get_stats_count(%struct.net_device* %35)
  %37 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @emac_ethtool_get_regs_len(%struct.net_device* %39)
  %41 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  ret void
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @emac_ethtool_get_stats_count(%struct.net_device*) #1

declare dso_local i32 @emac_ethtool_get_regs_len(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
