; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_net_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_net_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks_net = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: shutting down\0A\00", align 1
@KS_IER = common dso_local global i32 0, align 4
@KS_ISR = common dso_local global i32 0, align 4
@PMECR_PM_SOFTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ks_net_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks_net_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ks_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ks_net* @netdev_priv(%struct.net_device* %4)
  store %struct.ks_net* %5, %struct.ks_net** %3, align 8
  %6 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %7 = call i64 @netif_msg_ifdown(%struct.ks_net* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ks_info(%struct.ks_net* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %19 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %22 = load i32, i32* @KS_IER, align 4
  %23 = call i32 @ks_wrreg16(%struct.ks_net* %21, i32 %22, i32 0)
  %24 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %25 = load i32, i32* @KS_ISR, align 4
  %26 = call i32 @ks_wrreg16(%struct.ks_net* %24, i32 %25, i32 65535)
  %27 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %28 = call i32 @ks_disable_qmu(%struct.ks_net* %27)
  %29 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %30 = load i32, i32* @PMECR_PM_SOFTDOWN, align 4
  %31 = call i32 @ks_set_powermode(%struct.ks_net* %29, i32 %30)
  %32 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %33 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.net_device* %35)
  %37 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %38 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  ret i32 0
}

declare dso_local %struct.ks_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifdown(%struct.ks_net*) #1

declare dso_local i32 @ks_info(%struct.ks_net*, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_disable_qmu(%struct.ks_net*) #1

declare dso_local i32 @ks_set_powermode(%struct.ks_net*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
