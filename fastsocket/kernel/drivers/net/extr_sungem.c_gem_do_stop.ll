; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_do_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sungem.c_gem_do_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @gem_do_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_do_stop(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gem*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.gem* @netdev_priv(%struct.net_device* %7)
  store %struct.gem* %8, %struct.gem** %5, align 8
  %9 = load %struct.gem*, %struct.gem** %5, align 8
  %10 = getelementptr inbounds %struct.gem, %struct.gem* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.gem*, %struct.gem** %5, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.gem*, %struct.gem** %5, align 8
  %17 = getelementptr inbounds %struct.gem, %struct.gem* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.gem*, %struct.gem** %5, align 8
  %21 = call i32 @gem_disable_ints(%struct.gem* %20)
  %22 = load %struct.gem*, %struct.gem** %5, align 8
  %23 = getelementptr inbounds %struct.gem, %struct.gem* %22, i32 0, i32 2
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.gem*, %struct.gem** %5, align 8
  %26 = getelementptr inbounds %struct.gem, %struct.gem* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.gem*, %struct.gem** %5, align 8
  %30 = call i32 @gem_stop_dma(%struct.gem* %29)
  %31 = call i32 @msleep(i32 10)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load %struct.gem*, %struct.gem** %5, align 8
  %36 = call i32 @gem_reset(%struct.gem* %35)
  br label %37

37:                                               ; preds = %34, %2
  %38 = call i32 @msleep(i32 10)
  %39 = load %struct.gem*, %struct.gem** %5, align 8
  %40 = call i32 @gem_clean_rings(%struct.gem* %39)
  %41 = load %struct.gem*, %struct.gem** %5, align 8
  %42 = getelementptr inbounds %struct.gem, %struct.gem* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = bitcast %struct.net_device* %46 to i8*
  %48 = call i32 @free_irq(i32 %45, i8* %47)
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %37
  %52 = load %struct.gem*, %struct.gem** %5, align 8
  %53 = getelementptr inbounds %struct.gem, %struct.gem* %52, i32 0, i32 0
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.gem*, %struct.gem** %5, align 8
  %57 = call i32 @gem_put_cell(%struct.gem* %56)
  %58 = load %struct.gem*, %struct.gem** %5, align 8
  %59 = getelementptr inbounds %struct.gem, %struct.gem* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %51, %37
  ret void
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @gem_disable_ints(%struct.gem*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gem_stop_dma(%struct.gem*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gem_reset(%struct.gem*) #1

declare dso_local i32 @gem_clean_rings(%struct.gem*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @gem_put_cell(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
