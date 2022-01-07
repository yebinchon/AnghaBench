; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_release_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_avmfritz.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritzcard = type { i32, i32, i32, %struct.TYPE_4__, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i32 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@AVM_cnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritzcard*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.fritzcard* %0) #0 {
  %2 = alloca %struct.fritzcard*, align 8
  %3 = alloca i32, align 4
  store %struct.fritzcard* %0, %struct.fritzcard** %2, align 8
  %4 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %5 = call i32 @disable_hwirq(%struct.fritzcard* %4)
  %6 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %7 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %6, i32 0, i32 6
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @spin_lock_irqsave(i32* %7, i32 %8)
  %10 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %11 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* @ISDN_P_NONE, align 4
  %15 = call i32 @modehdlc(i32* %13, i32 %14)
  %16 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %17 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* @ISDN_P_NONE, align 4
  %21 = call i32 @modehdlc(i32* %19, i32 %20)
  %22 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %23 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %22, i32 0, i32 6
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i32 %24)
  %26 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %27 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %28, align 8
  %30 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %31 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %30, i32 0, i32 3
  %32 = call i32 %29(%struct.TYPE_4__* %31)
  %33 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %34 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %37 = call i32 @free_irq(i32 %35, %struct.fritzcard* %36)
  %38 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %39 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = call i32 @mISDN_freebchannel(i32* %41)
  %43 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %44 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @mISDN_freebchannel(i32* %46)
  %48 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %49 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @mISDN_unregister_device(i32* %51)
  %53 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %54 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @release_region(i32 %55, i32 32)
  %57 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %58 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pci_disable_device(i32 %59)
  %61 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %62 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_set_drvdata(i32 %63, i32* null)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %65)
  %67 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %68 = getelementptr inbounds %struct.fritzcard, %struct.fritzcard* %67, i32 0, i32 0
  %69 = call i32 @list_del(i32* %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %70)
  %72 = load %struct.fritzcard*, %struct.fritzcard** %2, align 8
  %73 = call i32 @kfree(%struct.fritzcard* %72)
  %74 = load i32, i32* @AVM_cnt, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* @AVM_cnt, align 4
  ret void
}

declare dso_local i32 @disable_hwirq(%struct.fritzcard*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @modehdlc(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.fritzcard*) #1

declare dso_local i32 @mISDN_freebchannel(i32*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fritzcard*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
