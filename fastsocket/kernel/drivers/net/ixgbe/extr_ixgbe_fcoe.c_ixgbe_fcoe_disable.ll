; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_fcoe.c_ixgbe_fcoe_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_FLAG_FCOE_ENABLED = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Disabling FCoE offload features.\0A\00", align 1
@NETIF_F_FCOE_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_fcoe_disable(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.ixgbe_adapter* %6, %struct.ixgbe_adapter** %4, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @atomic_dec_and_test(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IXGBE_FLAG_FCOE_ENABLED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %15
  %26 = load i32, i32* @drv, align 4
  %27 = call i32 @e_info(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i64 @netif_running(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = bitcast {}** %35 to i32 (%struct.net_device*)**
  %37 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 %37(%struct.net_device* %38)
  br label %40

40:                                               ; preds = %31, %25
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %42 = call i32 @ixgbe_fcoe_ddp_disable(%struct.ixgbe_adapter* %41)
  %43 = load i32, i32* @IXGBE_FLAG_FCOE_ENABLED, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @NETIF_F_FCOE_MTU, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netdev_features_change(%struct.net_device* %55)
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %58 = call i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter* %57)
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %60 = call i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter* %59)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i64 @netif_running(%struct.net_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %40
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i32 (%struct.net_device*)**
  %70 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %69, align 8
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = call i32 %70(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %64, %40
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %22, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @e_info(i32, i8*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_fcoe_ddp_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netdev_features_change(%struct.net_device*) #1

declare dso_local i32 @ixgbe_clear_interrupt_scheme(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_init_interrupt_scheme(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
