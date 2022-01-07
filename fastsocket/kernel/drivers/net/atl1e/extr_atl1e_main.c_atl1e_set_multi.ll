; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_set_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1e/extr_atl1e_main.c_atl1e_set_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.atl1e_adapter = type { %struct.atl1e_hw }
%struct.atl1e_hw = type { i32 }

@REG_MAC_CTRL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_CTRL_PROMIS_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_CTRL_MC_ALL_EN = common dso_local global i32 0, align 4
@REG_RX_HASH_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @atl1e_set_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1e_set_multi(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.atl1e_adapter*, align 8
  %4 = alloca %struct.atl1e_hw*, align 8
  %5 = alloca %struct.dev_mc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.atl1e_adapter* %9, %struct.atl1e_adapter** %3, align 8
  %10 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %10, i32 0, i32 0
  store %struct.atl1e_hw* %11, %struct.atl1e_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %13 = load i32, i32* @REG_MAC_CTRL, align 4
  %14 = call i32 @AT_READ_REG(%struct.atl1e_hw* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  br label %48

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_ALLMULTI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %47

40:                                               ; preds = %25
  %41 = load i32, i32* @MAC_CTRL_PROMIS_EN, align 4
  %42 = load i32, i32* @MAC_CTRL_MC_ALL_EN, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %32
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %50 = load i32, i32* @REG_MAC_CTRL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %49, i32 %50, i32 %51)
  %53 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %54 = load i32, i32* @REG_RX_HASH_TABLE, align 4
  %55 = call i32 @AT_WRITE_REG(%struct.atl1e_hw* %53, i32 %54, i32 0)
  %56 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %57 = load i32, i32* @REG_RX_HASH_TABLE, align 4
  %58 = call i32 @AT_WRITE_REG_ARRAY(%struct.atl1e_hw* %56, i32 %57, i32 1, i32 0)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = load %struct.dev_mc_list*, %struct.dev_mc_list** %60, align 8
  store %struct.dev_mc_list* %61, %struct.dev_mc_list** %5, align 8
  br label %62

62:                                               ; preds = %74, %48
  %63 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %64 = icmp ne %struct.dev_mc_list* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %67 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %68 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @atl1e_hash_mc_addr(%struct.atl1e_hw* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.atl1e_hw*, %struct.atl1e_hw** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @atl1e_hash_set(%struct.atl1e_hw* %71, i32 %72)
  br label %74

74:                                               ; preds = %65
  %75 = load %struct.dev_mc_list*, %struct.dev_mc_list** %5, align 8
  %76 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %75, i32 0, i32 1
  %77 = load %struct.dev_mc_list*, %struct.dev_mc_list** %76, align 8
  store %struct.dev_mc_list* %77, %struct.dev_mc_list** %5, align 8
  br label %62

78:                                               ; preds = %62
  ret void
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @AT_READ_REG(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1e_hw*, i32, i32) #1

declare dso_local i32 @AT_WRITE_REG_ARRAY(%struct.atl1e_hw*, i32, i32, i32) #1

declare dso_local i32 @atl1e_hash_mc_addr(%struct.atl1e_hw*, i32) #1

declare dso_local i32 @atl1e_hash_set(%struct.atl1e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
