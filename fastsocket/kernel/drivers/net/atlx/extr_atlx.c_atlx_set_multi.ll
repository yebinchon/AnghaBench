; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_set_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atlx.c_atlx_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.atlx_adapter = type { %struct.atlx_hw }
%struct.atlx_hw = type { i64 }

@REG_MAC_CTRL = common dso_local global i64 0, align 8
@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_CTRL_PROMIS_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CTRL_MC_ALL_EN = common dso_local global i32 0, align 4
@REG_RX_HASH_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @atlx_set_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atlx_set_multi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atlx_adapter*, align 8
  %4 = alloca %struct.atlx_hw*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.atlx_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atlx_adapter* %9, %struct.atlx_adapter** %3, align 8
  %10 = load %struct.atlx_adapter*, %struct.atlx_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atlx_adapter, %struct.atlx_adapter* %10, i32 0, i32 0
  store %struct.atlx_hw* %11, %struct.atlx_hw** %4, align 8
  %12 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %13 = getelementptr inbounds %struct.atlx_hw, %struct.atlx_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_MAC_CTRL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IFF_ALLMULTI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %50

43:                                               ; preds = %28
  %44 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %45 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %43, %35
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %54 = getelementptr inbounds %struct.atlx_hw, %struct.atlx_hw* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_MAC_CTRL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @iowrite32(i32 %52, i64 %57)
  %59 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %60 = getelementptr inbounds %struct.atlx_hw, %struct.atlx_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @iowrite32(i32 0, i64 %63)
  %65 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %66 = getelementptr inbounds %struct.atlx_hw, %struct.atlx_hw* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @REG_RX_HASH_TABLE, align 8
  %69 = add nsw i64 %67, %68
  %70 = add nsw i64 %69, 4
  %71 = call i32 @iowrite32(i32 0, i64 %70)
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load %struct.dev_mc_list*, %struct.dev_mc_list** %73, align 8
  store %struct.dev_mc_list* %74, %struct.dev_mc_list** %5, align 8
  br label %75

75:                                               ; preds = %87, %51
  %76 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %77 = icmp ne %struct.dev_mc_list* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %80 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %81 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @atlx_hash_mc_addr(%struct.atlx_hw* %79, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.atlx_hw*, %struct.atlx_hw** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @atlx_hash_set(%struct.atlx_hw* %84, i32 %85)
  br label %87

87:                                               ; preds = %78
  %88 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %89 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %88, i32 0, i32 1
  %90 = load %struct.dev_mc_list*, %struct.dev_mc_list** %89, align 8
  store %struct.dev_mc_list* %90, %struct.dev_mc_list** %5, align 8
  br label %75

91:                                               ; preds = %75
  ret void
}

declare dso_local %struct.atlx_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @atlx_hash_mc_addr(%struct.atlx_hw*, i32) #1

declare dso_local i32 @atlx_hash_set(%struct.atlx_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
