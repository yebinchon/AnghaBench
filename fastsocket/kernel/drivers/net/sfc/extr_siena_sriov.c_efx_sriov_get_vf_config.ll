; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i64, i32 }
%struct.efx_nic = type { i32, %struct.efx_vf* }
%struct.efx_vf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_sriov_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.efx_nic*, align 8
  %9 = alloca %struct.efx_vf*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %11)
  store %struct.efx_nic* %12, %struct.efx_nic** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  %22 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  %23 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %22, i32 0, i32 1
  %24 = load %struct.efx_vf*, %struct.efx_vf** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %24, i64 %26
  store %struct.efx_vf* %27, %struct.efx_vf** %9, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %30 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %32 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.efx_vf*, %struct.efx_vf** %9, align 8
  %35 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %33, i32 %37, i32 %38)
  %40 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %41 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.efx_vf*, %struct.efx_vf** %9, align 8
  %43 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @VLAN_VID_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %51 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = and i32 %54, 7
  %56 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %57 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %21, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
