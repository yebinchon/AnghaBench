; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_core.c_c2port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { %struct.c2port_ops* }
%struct.c2port_ops = type { i32 (%struct.c2port_device.0*, i32)* }
%struct.c2port_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2port_device*)* @c2port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c2port_reset(%struct.c2port_device* %0) #0 {
  %2 = alloca %struct.c2port_device*, align 8
  %3 = alloca %struct.c2port_ops*, align 8
  store %struct.c2port_device* %0, %struct.c2port_device** %2, align 8
  %4 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %5 = getelementptr inbounds %struct.c2port_device, %struct.c2port_device* %4, i32 0, i32 0
  %6 = load %struct.c2port_ops*, %struct.c2port_ops** %5, align 8
  store %struct.c2port_ops* %6, %struct.c2port_ops** %3, align 8
  %7 = call i32 (...) @local_irq_disable()
  %8 = load %struct.c2port_ops*, %struct.c2port_ops** %3, align 8
  %9 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %8, i32 0, i32 0
  %10 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %9, align 8
  %11 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %12 = bitcast %struct.c2port_device* %11 to %struct.c2port_device.0*
  %13 = call i32 %10(%struct.c2port_device.0* %12, i32 0)
  %14 = call i32 @udelay(i32 25)
  %15 = load %struct.c2port_ops*, %struct.c2port_ops** %3, align 8
  %16 = getelementptr inbounds %struct.c2port_ops, %struct.c2port_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.c2port_device.0*, i32)*, i32 (%struct.c2port_device.0*, i32)** %16, align 8
  %18 = load %struct.c2port_device*, %struct.c2port_device** %2, align 8
  %19 = bitcast %struct.c2port_device* %18 to %struct.c2port_device.0*
  %20 = call i32 %17(%struct.c2port_device.0* %19, i32 1)
  %21 = call i32 (...) @local_irq_enable()
  %22 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
