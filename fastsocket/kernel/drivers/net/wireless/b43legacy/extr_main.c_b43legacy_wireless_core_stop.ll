; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_wireless_core_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__*, i32, %struct.b43legacy_wl* }
%struct.TYPE_2__ = type { i32 }
%struct.b43legacy_wl = type { i32*, i32, i32, i32 }

@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i32 0, align 4
@B43legacy_QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Wireless interface stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_wireless_core_stop(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_wl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 2
  %8 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %7, align 8
  store %struct.b43legacy_wl* %8, %struct.b43legacy_wl** %3, align 8
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %10 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %9)
  %11 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %85

14:                                               ; preds = %1
  %15 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %16 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %15, i32 0, i32 3
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %21 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %19, i32 %20, i32 0)
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %24 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %22, i32 %23)
  %25 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %25, i32 0, i32 3
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = call i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev* %29)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %32 = load i32, i32* @B43legacy_STAT_INITIALIZED, align 4
  %33 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %31, i32 %32)
  %34 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %35 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 1
  %39 = call i32 @cancel_delayed_work_sync(i32* %38)
  %40 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %41 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %40, i32 0, i32 2
  %42 = call i32 @cancel_work_sync(i32* %41)
  %43 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %44 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %70, %14
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @B43legacy_QOS_QUEUE_NUM, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %60, %50
  %52 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %53 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i64 @skb_queue_len(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %62 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @skb_dequeue(i32* %66)
  %68 = call i32 @dev_kfree_skb(i32 %67)
  br label %51

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %46

73:                                               ; preds = %46
  %74 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %75 = call i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev* %74)
  %76 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %77 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = call i32 @free_irq(i32 %80, %struct.b43legacy_wldev* %81)
  %83 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %3, align 8
  %84 = call i32 @b43legacydbg(%struct.b43legacy_wl* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %85

85:                                               ; preds = %73, %13
  ret void
}

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @b43legacy_synchronize_irq(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @b43legacy_mac_suspend(%struct.b43legacy_wldev*) #1

declare dso_local i32 @free_irq(i32, %struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacydbg(%struct.b43legacy_wl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
