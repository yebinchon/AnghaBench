; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_au1k_irda_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_au1k_ir.c_au1k_irda_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1k_private = type { i32, i32* }

@IR_CONFIG_2 = common dso_local global i32 0, align 4
@IR_CONFIG_1 = common dso_local global i32 0, align 4
@IR_INTERFACE_CONFIG = common dso_local global i32 0, align 4
@AU1000_IRDA_TX_INT = common dso_local global i32 0, align 4
@AU1000_IRDA_RX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1k_irda_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1k_irda_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1k_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.au1k_private* @netdev_priv(%struct.net_device* %4)
  store %struct.au1k_private* %5, %struct.au1k_private** %3, align 8
  %6 = load i32, i32* @IR_CONFIG_2, align 4
  %7 = call i32 @read_ir_reg(i32 %6)
  %8 = and i32 %7, -257
  %9 = load i32, i32* @IR_CONFIG_2, align 4
  %10 = call i32 @writel(i32 %8, i32 %9)
  %11 = load i32, i32* @IR_CONFIG_1, align 4
  %12 = call i32 @writel(i32 0, i32 %11)
  %13 = load i32, i32* @IR_INTERFACE_CONFIG, align 4
  %14 = call i32 @writel(i32 0, i32 %13)
  %15 = call i32 (...) @au_sync()
  %16 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %17 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %22 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @irlap_close(i32* %23)
  %25 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %26 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @netif_stop_queue(%struct.net_device* %28)
  %30 = load %struct.au1k_private*, %struct.au1k_private** %3, align 8
  %31 = getelementptr inbounds %struct.au1k_private, %struct.au1k_private* %30, i32 0, i32 0
  %32 = call i32 @del_timer(i32* %31)
  %33 = load i32, i32* @AU1000_IRDA_TX_INT, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.net_device* %34)
  %36 = load i32, i32* @AU1000_IRDA_RX_INT, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.net_device* %37)
  ret i32 0
}

declare dso_local %struct.au1k_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @read_ir_reg(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @irlap_close(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
