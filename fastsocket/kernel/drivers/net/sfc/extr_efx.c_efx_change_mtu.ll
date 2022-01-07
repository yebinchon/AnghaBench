; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*)* }

@EFX_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"changing MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @efx_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %6, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %11 = call i32 @efx_check_disabled(%struct.efx_nic* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %57

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EFX_MAX_MTU, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %16
  %24 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %25 = load i32, i32* @drv, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @netif_dbg(%struct.efx_nic* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %32 = call i32 @efx_device_detach_sync(%struct.efx_nic* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %34 = call i32 @efx_stop_all(%struct.efx_nic* %33)
  %35 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %44, align 8
  %46 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %47 = call i32 %45(%struct.efx_nic* %46)
  %48 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %52 = call i32 @efx_start_all(%struct.efx_nic* %51)
  %53 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netif_device_attach(i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %23, %20, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @efx_check_disabled(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_device_detach_sync(%struct.efx_nic*) #1

declare dso_local i32 @efx_stop_all(%struct.efx_nic*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @efx_start_all(%struct.efx_nic*) #1

declare dso_local i32 @netif_device_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
