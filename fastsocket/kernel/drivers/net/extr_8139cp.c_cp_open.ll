; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139cp.c_cp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.cp_private = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s: enabling interface\0A\00", align 1
@cp_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cp_private*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.cp_private* @netdev_priv(%struct.net_device* %6)
  store %struct.cp_private* %7, %struct.cp_private** %4, align 8
  %8 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %9 = call i64 @netif_msg_ifup(%struct.cp_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %18 = call i32 @cp_alloc_rings(%struct.cp_private* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %16
  %24 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %25 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %24, i32 0, i32 0
  %26 = call i32 @napi_enable(i32* %25)
  %27 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %28 = call i32 @cp_init_hw(%struct.cp_private* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @cp_interrupt, align 4
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @request_irq(i32 %31, i32 %32, i32 %33, i32 %36, %struct.net_device* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %23
  br label %54

42:                                               ; preds = %23
  %43 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %44 = call i32 @cp_enable_irq(%struct.cp_private* %43)
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netif_carrier_off(%struct.net_device* %45)
  %47 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %48 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %47, i32 0, i32 1
  %49 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %50 = call i32 @netif_msg_link(%struct.cp_private* %49)
  %51 = call i32 @mii_check_media(i32* %48, i32 %50, i32 1)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_start_queue(%struct.net_device* %52)
  store i32 0, i32* %2, align 4
  br label %63

54:                                               ; preds = %41
  %55 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %56 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %55, i32 0, i32 0
  %57 = call i32 @napi_disable(i32* %56)
  %58 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %59 = call i32 @cp_stop_hw(%struct.cp_private* %58)
  %60 = load %struct.cp_private*, %struct.cp_private** %4, align 8
  %61 = call i32 @cp_free_rings(%struct.cp_private* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %54, %42, %21
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifup(%struct.cp_private*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @cp_alloc_rings(%struct.cp_private*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @cp_init_hw(%struct.cp_private*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @cp_enable_irq(%struct.cp_private*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.cp_private*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cp_stop_hw(%struct.cp_private*) #1

declare dso_local i32 @cp_free_rings(%struct.cp_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
