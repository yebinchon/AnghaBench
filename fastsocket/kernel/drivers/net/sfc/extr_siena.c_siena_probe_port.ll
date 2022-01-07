; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_probe_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena.c_siena_probe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { {}* }
%struct.efx_nic = type { %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@efx_mcdi_phy_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@siena_mdio_read = common dso_local global i32 0, align 4
@siena_mdio_write = common dso_local global i32 0, align 4
@MC_CMD_MAC_NSTATS = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"stats buffer at %llx (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_probe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_probe_port(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 2
  store %struct.TYPE_6__* @efx_mcdi_phy_ops, %struct.TYPE_6__** %6, align 8
  %7 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %8 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @siena_mdio_read, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @siena_mdio_write, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.efx_nic*)**
  %26 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %25, align 8
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = call i32 %26(%struct.efx_nic* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %1
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i32, i32* @MC_CMD_MAC_NSTATS, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %34, %struct.TYPE_5__* %36, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %74

46:                                               ; preds = %33
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = load i32, i32* @probe, align 4
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @virt_to_phys(i32 %64)
  %66 = trunc i64 %65 to i32
  %67 = call i32 @netif_dbg(%struct.efx_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %60, i32 %66)
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @efx_mcdi_mac_stats(%struct.efx_nic* %68, i64 %72, i32 0, i32 0, i32 1)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %46, %44, %31
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @efx_mcdi_mac_stats(%struct.efx_nic*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
