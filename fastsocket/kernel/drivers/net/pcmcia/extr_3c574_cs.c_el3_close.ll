; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c574_cs.c_el3_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_3c574_cs.c_el3_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.el3_private = type { i32, i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s: shutting down ethercard.\0A\00", align 1
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@RxDisable = common dso_local global i32 0, align 4
@TxDisable = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @el3_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.el3_private*, align 8
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.el3_private* @netdev_priv(%struct.net_device* %10)
  store %struct.el3_private* %11, %struct.el3_private** %4, align 8
  %12 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %13 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %12, i32 0, i32 2
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %13, align 8
  store %struct.pcmcia_device* %14, %struct.pcmcia_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DEBUG(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %20 = call i64 @pcmcia_dev_present(%struct.pcmcia_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %1
  %23 = load i32, i32* @StatsDisable, align 4
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @EL3_CMD, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %23, i64 %27)
  %29 = load i32, i32* @RxDisable, align 4
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @EL3_CMD, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outw(i32 %29, i64 %33)
  %35 = load i32, i32* @TxDisable, align 4
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @EL3_CMD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @outw(i32 %35, i64 %39)
  %41 = call i32 @EL3WINDOW(i32 0)
  %42 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %43 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %42, i32 0, i32 1
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = call i32 @update_stats(%struct.net_device* %46)
  %48 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %49 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %48, i32 0, i32 1
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* @SetIntrEnb, align 4
  %53 = load i32, i32* %3, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @EL3_CMD, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %22, %1
  %59 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %60 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = call i32 @netif_stop_queue(%struct.net_device* %63)
  %65 = load %struct.el3_private*, %struct.el3_private** %4, align 8
  %66 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %65, i32 0, i32 0
  %67 = call i32 @del_timer_sync(i32* %66)
  ret i32 0
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i64 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_stats(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
