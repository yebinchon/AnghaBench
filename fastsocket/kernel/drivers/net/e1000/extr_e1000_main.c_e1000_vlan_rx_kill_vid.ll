; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_kill_vid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_main.c_e1000_vlan_rx_kill_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@__E1000_DOWN = common dso_local global i32 0, align 4
@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @e1000_vlan_rx_kill_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_vlan_rx_kill_vid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.e1000_adapter* %10, %struct.e1000_adapter** %5, align 8
  %11 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %11, i32 0, i32 2
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load i32, i32* @__E1000_DOWN, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 0
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = call i32 @e1000_irq_disable(%struct.e1000_adapter* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @vlan_group_set_device(i32 %24, i32 %25, i32* null)
  %27 = load i32, i32* @__E1000_DOWN, align 4
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 0
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %34 = call i32 @e1000_irq_enable(%struct.e1000_adapter* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load i32, i32* %4, align 4
  %37 = ashr i32 %36, 5
  %38 = and i32 %37, 127
  store i32 %38, i32* %8, align 4
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %40 = load i32, i32* @VFTA, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 31
  %45 = shl i32 1, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @e1000_write_vfta(%struct.e1000_hw* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @e1000_irq_disable(%struct.e1000_adapter*) #1

declare dso_local i32 @vlan_group_set_device(i32, i32, i32*) #1

declare dso_local i32 @e1000_irq_enable(%struct.e1000_adapter*) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_vfta(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
