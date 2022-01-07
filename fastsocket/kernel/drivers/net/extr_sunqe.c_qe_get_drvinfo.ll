; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunqe.c_qe_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.linux_prom_registers = type { i32 }
%struct.sunqe = type { %struct.of_device* }
%struct.of_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sunqe\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"3.0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"SBUS:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @qe_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.linux_prom_registers*, align 8
  %6 = alloca %struct.sunqe*, align 8
  %7 = alloca %struct.of_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sunqe* @netdev_priv(%struct.net_device* %8)
  store %struct.sunqe* %9, %struct.sunqe** %6, align 8
  %10 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strcpy(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcpy(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.sunqe*, %struct.sunqe** %6, align 8
  %19 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %18, i32 0, i32 0
  %20 = load %struct.of_device*, %struct.of_device** %19, align 8
  store %struct.of_device* %20, %struct.of_device** %7, align 8
  %21 = load %struct.of_device*, %struct.of_device** %7, align 8
  %22 = getelementptr inbounds %struct.of_device, %struct.of_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.linux_prom_registers* @of_get_property(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.linux_prom_registers* %24, %struct.linux_prom_registers** %5, align 8
  %25 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %26 = icmp ne %struct.linux_prom_registers* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %5, align 8
  %32 = getelementptr inbounds %struct.linux_prom_registers, %struct.linux_prom_registers* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sprintf(i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %27, %2
  ret void
}

declare dso_local %struct.sunqe* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.linux_prom_registers* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
