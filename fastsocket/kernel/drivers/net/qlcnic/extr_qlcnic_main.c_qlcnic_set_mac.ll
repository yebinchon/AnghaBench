; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.qlcnic_adapter = type { i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_MAC_OVERRIDE_DISABLED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @qlcnic_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.sockaddr*
  store %struct.sockaddr* %11, %struct.sockaddr** %7, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %13 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @QLCNIC_MAC_OVERRIDE_DISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %97

28:                                               ; preds = %18
  %29 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @is_valid_ether_addr(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %97

37:                                               ; preds = %28
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = call i32 @memcmp(i32 %40, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %97

48:                                               ; preds = %37
  %49 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 1
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = call i32 @netif_device_detach(%struct.net_device* %55)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %58 = call i32 @qlcnic_napi_disable(%struct.qlcnic_adapter* %57)
  br label %59

59:                                               ; preds = %54, %48
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %61 = call i32 @qlcnic_delete_adapter_mac(%struct.qlcnic_adapter* %60)
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %66 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %76 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %74, i32 %77, i32 %80)
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @qlcnic_set_multi(i32 %84)
  %86 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 1
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %59
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 @netif_device_attach(%struct.net_device* %92)
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %95 = call i32 @qlcnic_napi_enable(%struct.qlcnic_adapter* %94)
  br label %96

96:                                               ; preds = %91, %59
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %47, %34, %25, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_napi_disable(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_delete_adapter_mac(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @qlcnic_set_multi(i32) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_napi_enable(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
