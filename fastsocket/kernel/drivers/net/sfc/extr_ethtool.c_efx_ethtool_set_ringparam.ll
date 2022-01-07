; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_ethtool_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i64, i64 }
%struct.efx_nic = type { i32 }

@EFX_MAX_DMAQ_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFX_RXQ_MIN_ENT = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RX queues cannot be smaller than %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"increasing TX queue size to minimum of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @efx_ethtool_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %6, align 8
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @EFX_MAX_DMAQ_SIZE, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EFX_MAX_DMAQ_SIZE, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %14, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %77

34:                                               ; preds = %25
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EFX_RXQ_MIN_ENT, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %42 = load i32, i32* @drv, align 4
  %43 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @EFX_RXQ_MIN_ENT, align 8
  %47 = call i32 @netif_err(%struct.efx_nic* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %77

50:                                               ; preds = %34
  %51 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %55 = call i32 @EFX_TXQ_MIN_ENT(%struct.efx_nic* %54)
  %56 = call i64 @max(i64 %53, i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %64 = load i32, i32* @drv, align 4
  %65 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %66 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @netif_warn(%struct.efx_nic* %63, i32 %64, i32 %67, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %62, %50
  %71 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %72 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @efx_realloc_channels(%struct.efx_nic* %71, i64 %74, i64 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %40, %31
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @EFX_TXQ_MIN_ENT(%struct.efx_nic*) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i32 @efx_realloc_channels(%struct.efx_nic*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
