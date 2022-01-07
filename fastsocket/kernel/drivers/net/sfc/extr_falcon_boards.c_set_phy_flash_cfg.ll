; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_set_phy_flash_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon_boards.c_set_phy_flash_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.efx_nic = type { i32, i64, i32 }

@PHY_MODE_SPECIAL = common dso_local global i32 0, align 4
@STATE_READY = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_phy_flash_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phy_flash_cfg(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.efx_nic*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @to_pci_dev(%struct.device* %13)
  %15 = call %struct.efx_nic* @pci_get_drvdata(i32 %14)
  store %struct.efx_nic* %15, %struct.efx_nic** %9, align 8
  %16 = call i32 (...) @rtnl_lock()
  %17 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 48
  br i1 %26, label %27, label %32

27:                                               ; preds = %22, %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %11, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = xor i32 %35, %36
  %38 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %86

42:                                               ; preds = %34
  %43 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @STATE_READY, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @netif_running(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %42
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %85

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %67 = call i32 @falcon_stop_nic_stats(%struct.efx_nic* %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %70 = call i32 @sfe4001_poweron(%struct.efx_nic* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %75 = call i32 @efx_reconfigure_port(%struct.efx_nic* %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @PHY_MODE_SPECIAL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  %83 = call i32 @falcon_start_nic_stats(%struct.efx_nic* %82)
  br label %84

84:                                               ; preds = %81, %76
  br label %85

85:                                               ; preds = %84, %54
  br label %86

86:                                               ; preds = %85, %41
  %87 = call i32 (...) @rtnl_unlock()
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  br label %95

93:                                               ; preds = %86
  %94 = load i64, i64* %8, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i64 [ %92, %90 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i32
  ret i32 %97
}

declare dso_local %struct.efx_nic* @pci_get_drvdata(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @falcon_stop_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @sfe4001_poweron(%struct.efx_nic*) #1

declare dso_local i32 @efx_reconfigure_port(%struct.efx_nic*) #1

declare dso_local i32 @falcon_start_nic_stats(%struct.efx_nic*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
