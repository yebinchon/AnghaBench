; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.netdrv_private = type { i32*, i32*, i32, i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: Shutting down ethercard, status was 0x%4.4x.\0A\00", align 1
@IntrStatus = common dso_local global i32 0, align 4
@ChipCmd = common dso_local global i32 0, align 4
@ChipCmdClear = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@RxMissed = common dso_local global i32 0, align 4
@RX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@TX_BUF_TOT_LEN = common dso_local global i32 0, align 4
@Cfg9346 = common dso_local global i32 0, align 4
@Cfg9346_Unlock = common dso_local global i32 0, align 4
@Config1 = common dso_local global i32 0, align 4
@Cfg9346_Lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netdrv_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdrv_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdrv_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdrv_private* %7, %struct.netdrv_private** %3, align 8
  %8 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %9 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %8, i32 0, i32 7
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IntrStatus, align 4
  %18 = call i32 @NETDRV_R16(i32 %17)
  %19 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %21 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %20, i32 0, i32 6
  %22 = call i32 @del_timer_sync(i32* %21)
  %23 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %23, i32 0, i32 5
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i32, i32* @ChipCmd, align 4
  %28 = load i32, i32* @ChipCmd, align 4
  %29 = call i32 @NETDRV_R8(i32 %28)
  %30 = load i32, i32* @ChipCmdClear, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @NETDRV_W8(i32 %27, i32 %31)
  %33 = load i32, i32* @IntrMask, align 4
  %34 = call i32 @NETDRV_W16(i32 %33, i32 0)
  %35 = load i32, i32* @RxMissed, align 4
  %36 = call i64 @NETDRV_R32(i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %36
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load i32, i32* @RxMissed, align 4
  %45 = call i32 @NETDRV_W32(i32 %44, i32 0)
  %46 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %47 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %46, i32 0, i32 5
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.net_device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netdrv_tx_clear(%struct.net_device* %55)
  %57 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RX_BUF_TOT_LEN, align 4
  %61 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %62 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %65 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pci_free_consistent(i32 %59, i32 %60, i32* %63, i32 %66)
  %68 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %69 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TX_BUF_TOT_LEN, align 4
  %72 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %73 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %76 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pci_free_consistent(i32 %70, i32 %71, i32* %74, i32 %77)
  %79 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %80 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.netdrv_private*, %struct.netdrv_private** %3, align 8
  %82 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @Cfg9346, align 4
  %84 = load i32, i32* @Cfg9346_Unlock, align 4
  %85 = call i32 @NETDRV_W8(i32 %83, i32 %84)
  %86 = load i32, i32* @Config1, align 4
  %87 = call i32 @NETDRV_W8(i32 %86, i32 3)
  %88 = load i32, i32* @Cfg9346, align 4
  %89 = load i32, i32* @Cfg9346_Lock, align 4
  %90 = call i32 @NETDRV_W8(i32 %88, i32 %89)
  %91 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @NETDRV_R16(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @NETDRV_W8(i32, i32) #1

declare dso_local i32 @NETDRV_R8(i32) #1

declare dso_local i32 @NETDRV_W16(i32, i32) #1

declare dso_local i64 @NETDRV_R32(i32) #1

declare dso_local i32 @NETDRV_W32(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @netdrv_tx_clear(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
