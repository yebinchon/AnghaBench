; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_enable_interrupt_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ps3/extr_ps3-vuart.c_ps3_vuart_enable_interrupt_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_system_bus_device = type { i32 }
%struct.ps3_vuart_port_priv = type { i32 }

@INTERRUPT_MASK_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps3_vuart_enable_interrupt_rx(%struct.ps3_system_bus_device* %0) #0 {
  %2 = alloca %struct.ps3_system_bus_device*, align 8
  %3 = alloca %struct.ps3_vuart_port_priv*, align 8
  store %struct.ps3_system_bus_device* %0, %struct.ps3_system_bus_device** %2, align 8
  %4 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %5 = call %struct.ps3_vuart_port_priv* @to_port_priv(%struct.ps3_system_bus_device* %4)
  store %struct.ps3_vuart_port_priv* %5, %struct.ps3_vuart_port_priv** %3, align 8
  %6 = load %struct.ps3_vuart_port_priv*, %struct.ps3_vuart_port_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ps3_vuart_port_priv, %struct.ps3_vuart_port_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @INTERRUPT_MASK_RX, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ps3_system_bus_device*, %struct.ps3_system_bus_device** %2, align 8
  %15 = load %struct.ps3_vuart_port_priv*, %struct.ps3_vuart_port_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ps3_vuart_port_priv, %struct.ps3_vuart_port_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INTERRUPT_MASK_RX, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ps3_vuart_set_interrupt_mask(%struct.ps3_system_bus_device* %14, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  %22 = phi i32 [ 0, %12 ], [ %20, %13 ]
  ret i32 %22
}

declare dso_local %struct.ps3_vuart_port_priv* @to_port_priv(%struct.ps3_system_bus_device*) #1

declare dso_local i32 @ps3_vuart_set_interrupt_mask(%struct.ps3_system_bus_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
