; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_release_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_hfcpci.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfc_pci = type { i32, %struct.TYPE_5__, i32*, i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@ISDN_P_TE_S0 = common dso_local global i64 0, align 8
@CLOSE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfc_pci*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.hfc_pci* %0) #0 {
  %2 = alloca %struct.hfc_pci*, align 8
  %3 = alloca i32, align 4
  store %struct.hfc_pci* %0, %struct.hfc_pci** %2, align 8
  %4 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %5 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %4, i32 0, i32 6
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @spin_lock_irqsave(i32* %5, i32 %6)
  %8 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %9 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %12 = call i32 @disable_hwirq(%struct.hfc_pci* %11)
  %13 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %14 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* @ISDN_P_NONE, align 4
  %18 = call i32 @mode_hfcpci(i32* %16, i32 1, i32 %17)
  %19 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %20 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* @ISDN_P_NONE, align 4
  %24 = call i32 @mode_hfcpci(i32* %22, i32 2, i32 %23)
  %25 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %26 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %1
  %32 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %33 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = call i32 @del_timer(%struct.TYPE_6__* %34)
  %36 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %37 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %1
  %41 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %42 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %41, i32 0, i32 6
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i32 %43)
  %45 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %46 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ISDN_P_TE_S0, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %53 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @CLOSE_CHANNEL, align 4
  %57 = call i32 @l1_event(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %40
  %59 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %60 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %65 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %68 = call i32 @free_irq(i32 %66, %struct.hfc_pci* %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %71 = call i32 @release_io_hfcpci(%struct.hfc_pci* %70)
  %72 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %73 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @mISDN_unregister_device(i32* %74)
  %76 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %77 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = call i32 @mISDN_freebchannel(i32* %79)
  %81 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %82 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = call i32 @mISDN_freebchannel(i32* %84)
  %86 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %87 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %86, i32 0, i32 1
  %88 = call i32 @mISDN_freedchannel(%struct.TYPE_5__* %87)
  %89 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %90 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pci_set_drvdata(i32 %91, i32* null)
  %93 = load %struct.hfc_pci*, %struct.hfc_pci** %2, align 8
  %94 = call i32 @kfree(%struct.hfc_pci* %93)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @disable_hwirq(%struct.hfc_pci*) #1

declare dso_local i32 @mode_hfcpci(i32*, i32, i32) #1

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @l1_event(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.hfc_pci*) #1

declare dso_local i32 @release_io_hfcpci(%struct.hfc_pci*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @mISDN_freebchannel(i32*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

declare dso_local i32 @kfree(%struct.hfc_pci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
