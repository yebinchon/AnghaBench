; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_vlan_rx_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar.c_gfar_vlan_rx_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vlan_group = type { i32 }
%struct.gfar_private = type { i32, %struct.TYPE_2__*, %struct.vlan_group* }
%struct.TYPE_2__ = type { i32, i32 }

@TCTRL_VLINS = common dso_local global i32 0, align 4
@RCTRL_VLEX = common dso_local global i32 0, align 4
@RCTRL_PRSDEP_INIT = common dso_local global i32 0, align 4
@RCTRL_REQ_PARSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.vlan_group*)* @gfar_vlan_rx_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_vlan_rx_register(%struct.net_device* %0, %struct.vlan_group* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.vlan_group*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.vlan_group* %1, %struct.vlan_group** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %5, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %15 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %16 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %15, i32 0, i32 2
  store %struct.vlan_group* %14, %struct.vlan_group** %16, align 8
  %17 = load %struct.vlan_group*, %struct.vlan_group** %4, align 8
  %18 = icmp ne %struct.vlan_group* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %21 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @gfar_read(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @TCTRL_VLINS, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %29 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @gfar_write(i32* %31, i32 %32)
  %34 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %35 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @gfar_read(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @RCTRL_VLEX, align 4
  %40 = load i32, i32* @RCTRL_PRSDEP_INIT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %45 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @gfar_write(i32* %47, i32 %48)
  br label %95

50:                                               ; preds = %2
  %51 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %52 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @gfar_read(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @TCTRL_VLINS, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %61 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @gfar_write(i32* %63, i32 %64)
  %66 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %67 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @gfar_read(i32* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @RCTRL_VLEX, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @RCTRL_REQ_PARSER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %50
  %80 = load i32, i32* @RCTRL_PRSDEP_INIT, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  br label %88

83:                                               ; preds = %50
  %84 = load i32, i32* @RCTRL_PRSDEP_INIT, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %90 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @gfar_write(i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %19
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = load %struct.net_device*, %struct.net_device** %3, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @gfar_change_mtu(%struct.net_device* %96, i32 %99)
  %101 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %102 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %101, i32 0, i32 0
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gfar_read(i32*) #1

declare dso_local i32 @gfar_write(i32*, i32) #1

declare dso_local i32 @gfar_change_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
