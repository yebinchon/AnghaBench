; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixp2000/extr_ixpdev.c_ixpdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixpdev_priv = type { i32, i32 }

@nds_open = common dso_local global i32 0, align 4
@IRQ_IXP2000_THDA0 = common dso_local global i32 0, align 4
@ixpdev_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ixp2000_eth\00", align 1
@nds = common dso_local global i32 0, align 4
@IXP2000_IRQ_THD_ENABLE_SET_A_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ixpdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixpdev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixpdev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixpdev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ixpdev_priv* %7, %struct.ixpdev_priv** %4, align 8
  %8 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %8, i32 0, i32 1
  %10 = call i32 @napi_enable(i32* %9)
  %11 = load i32, i32* @nds_open, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @nds_open, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @IRQ_IXP2000_THDA0, align 4
  %16 = load i32, i32* @ixpdev_interrupt, align 4
  %17 = load i32, i32* @IRQF_SHARED, align 4
  %18 = load i32, i32* @nds, align 4
  %19 = call i32 @request_irq(i32 %15, i32 %16, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load i32, i32* @nds_open, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @nds_open, align 4
  %25 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %25, i32 0, i32 1
  %27 = call i32 @napi_disable(i32* %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %14
  %30 = load i32, i32* @IXP2000_IRQ_THD_ENABLE_SET_A_0, align 4
  %31 = call i32 @ixp2000_reg_write(i32 %30, i32 65535)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.ixpdev_priv*, %struct.ixpdev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ixpdev_priv, %struct.ixpdev_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_port_admin_status(i32 %35, i32 1)
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 @netif_start_queue(%struct.net_device* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ixpdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ixp2000_reg_write(i32, i32) #1

declare dso_local i32 @set_port_admin_status(i32, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
