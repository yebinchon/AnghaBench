; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, %struct.efx_vf* }
%struct.efx_vf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_sriov_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.efx_nic*, align 8
  %11 = alloca %struct.efx_vf*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %13)
  store %struct.efx_nic* %14, %struct.efx_nic** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %51

23:                                               ; preds = %4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 1
  %26 = load %struct.efx_vf*, %struct.efx_vf** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %26, i64 %28
  store %struct.efx_vf* %29, %struct.efx_vf** %11, align 8
  %30 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %31 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @VLAN_VID_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %36, 7
  %38 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %35, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @htons(i32 %41)
  %43 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %44 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %47 = call i32 @__efx_sriov_update_vf_addr(%struct.efx_vf* %46)
  %48 = load %struct.efx_vf*, %struct.efx_vf** %11, align 8
  %49 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %23, %20
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @__efx_sriov_update_vf_addr(%struct.efx_vf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
