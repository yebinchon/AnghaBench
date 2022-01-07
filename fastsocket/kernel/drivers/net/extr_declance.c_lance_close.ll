; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_declance.c_lance_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.lance_private = type { i64, i32, %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@ioasic_ssr_lock = common dso_local global i32 0, align 4
@IO_REG_SSR = common dso_local global i32 0, align 4
@IO_SSR_LANCE_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_regs*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.lance_private* @netdev_priv(%struct.net_device* %6)
  store %struct.lance_private* %7, %struct.lance_private** %3, align 8
  %8 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %9 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %8, i32 0, i32 2
  %10 = load %struct.lance_regs*, %struct.lance_regs** %9, align 8
  store %struct.lance_regs* %10, %struct.lance_regs** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_stop_queue(%struct.net_device* %11)
  %13 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 1
  %15 = call i32 @del_timer_sync(i32* %14)
  %16 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %17 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %16, i32 0, i32 1
  %18 = load i32, i32* @LE_CSR0, align 4
  %19 = call i32 @writereg(i32* %17, i32 %18)
  %20 = load %struct.lance_regs*, %struct.lance_regs** %4, align 8
  %21 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %20, i32 0, i32 0
  %22 = load i32, i32* @LE_C0_STOP, align 4
  %23 = call i32 @writereg(i32* %21, i32 %22)
  %24 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %25 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @ioasic_ssr_lock, i64 %29)
  %31 = call i32 (...) @fast_mb()
  %32 = load i32, i32* @IO_REG_SSR, align 4
  %33 = load i32, i32* @IO_REG_SSR, align 4
  %34 = call i32 @ioasic_read(i32 %33)
  %35 = load i32, i32* @IO_SSR_LANCE_DMA_EN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = call i32 @ioasic_write(i32 %32, i32 %37)
  %39 = call i32 (...) @fast_iob()
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @ioasic_ssr_lock, i64 %40)
  %42 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %43 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @free_irq(i64 %44, %struct.net_device* %45)
  br label %47

47:                                               ; preds = %28, %1
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @free_irq(i64 %50, %struct.net_device* %51)
  ret i32 0
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fast_mb(...) #1

declare dso_local i32 @ioasic_write(i32, i32) #1

declare dso_local i32 @ioasic_read(i32) #1

declare dso_local i32 @fast_iob(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
