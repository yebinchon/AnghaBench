; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_set_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000e_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eee = type { i64, i64, i32, i32 }
%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Setting EEE tx-lpi is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Setting EEE Tx LPI timer is not supported\0A\00", align 1
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"EEE advertisement supports only 100TX and/or 1000T full-duplex\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eee*)* @e1000e_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000e_set_eee(%struct.net_device* %0, %struct.ethtool_eee* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca %struct.ethtool_eee, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_eee* %1, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %6, align 8
  %12 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @e1000e_get_eee(%struct.net_device* %14, %struct.ethtool_eee* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @e_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %8, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = call i32 @e_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %83

42:                                               ; preds = %31
  %43 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %47 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = call i32 @e_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %83

56:                                               ; preds = %42
  %57 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ethtool_adv_to_mmd_eee_adv_t(i32 %59)
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i64 @netif_running(%struct.net_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %56
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %78 = call i32 @e1000e_reinit_locked(%struct.e1000_adapter* %77)
  br label %82

79:                                               ; preds = %56
  %80 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %81 = call i32 @e1000e_reset(%struct.e1000_adapter* %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %52, %38, %27, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000e_get_eee(%struct.net_device*, %struct.ethtool_eee*) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @ethtool_adv_to_mmd_eee_adv_t(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e1000e_reinit_locked(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
