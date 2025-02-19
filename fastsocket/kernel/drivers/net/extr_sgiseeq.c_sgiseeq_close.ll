; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sgiseeq.c_sgiseeq_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_private = type { i32, %struct.sgiseeq_regs* }
%struct.sgiseeq_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sgiseeq_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgiseeq_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sgiseeq_private*, align 8
  %4 = alloca %struct.sgiseeq_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sgiseeq_private* %7, %struct.sgiseeq_private** %3, align 8
  %8 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %9 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %8, i32 0, i32 1
  %10 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %9, align 8
  store %struct.sgiseeq_regs* %10, %struct.sgiseeq_regs** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_stop_queue(%struct.net_device* %14)
  %16 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %17 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sgiseeq_regs*, %struct.sgiseeq_regs** %4, align 8
  %20 = call i32 @reset_hpc3_and_seeq(i32 %18, %struct.sgiseeq_regs* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @seeq_purge_ring(%struct.net_device* %24)
  ret i32 0
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @reset_hpc3_and_seeq(i32, %struct.sgiseeq_regs*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @seeq_purge_ring(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
