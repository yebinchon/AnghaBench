; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.e1000_adapter = type { i64, i32, %struct.vlan_group*, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_VME = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_CFIEN = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@E1000_RCTL_VFE = common dso_local global i32 0, align 4
@E1000_MNG_VLAN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @e1000_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %5, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 3
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load i32, i32* @__E1000_DOWN, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 1
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 2
  store %struct.vlan_group* %22, %struct.vlan_group** %24, align 8
  %25 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %26 = icmp ne %struct.vlan_group* %25, null
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load i32, i32* @CTRL, align 4
  %29 = call i32 @er32(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* @E1000_CTRL_VME, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @CTRL, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ew32(i32 %33, i32 %34)
  %36 = load i32, i32* @RCTL, align 4
  %37 = call i32 @er32(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @E1000_RCTL_CFIEN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_PROMISC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %27
  %49 = load i32, i32* @E1000_RCTL_VFE, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %27
  %53 = load i32, i32* @RCTL, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ew32(i32 %53, i32 %54)
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %57 = call i32 @e1000_update_mng_vlan(%struct.e1000_adapter* %56)
  br label %92

58:                                               ; preds = %21
  %59 = load i32, i32* @CTRL, align 4
  %60 = call i32 @er32(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* @E1000_CTRL_VME, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @CTRL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ew32(i32 %65, i32 %66)
  %68 = load i32, i32* @RCTL, align 4
  %69 = call i32 @er32(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @E1000_RCTL_VFE, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @RCTL, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ew32(i32 %74, i32 %75)
  %77 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %78 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @E1000_MNG_VLAN_NONE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %58
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @e1000_vlan_rx_kill_vid(%struct.net_device* %83, i64 %86)
  %88 = load i64, i64* @E1000_MNG_VLAN_NONE, align 8
  %89 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %90 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %82, %58
  br label %92

92:                                               ; preds = %91, %52
  %93 = load i32, i32* @__E1000_DOWN, align 4
  %94 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %95 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %94, i32 0, i32 1
  %96 = call i32 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %100 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %99)
  br label %101

101:                                              ; preds = %98, %92
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000_update_mng_vlan(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_vlan_rx_kill_vid(%struct.net_device*, i64) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
