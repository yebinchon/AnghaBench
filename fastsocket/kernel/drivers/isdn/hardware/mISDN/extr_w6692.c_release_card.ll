; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_release_card.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_w6692.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w6692_hw = type { i32, i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@led = common dso_local global i32 0, align 4
@W6692_USR = common dso_local global i64 0, align 8
@W_XDATA = common dso_local global i32 0, align 4
@CLOSE_CHANNEL = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w6692_hw*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.w6692_hw* %0) #0 {
  %2 = alloca %struct.w6692_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.w6692_hw* %0, %struct.w6692_hw** %2, align 8
  %4 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %5 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %4, i32 0, i32 9
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @spin_lock_irqsave(i32* %5, i32 %6)
  %8 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %9 = call i32 @disable_hwirq(%struct.w6692_hw* %8)
  %10 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %11 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %10, i32 0, i32 6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = load i32, i32* @ISDN_P_NONE, align 4
  %15 = call i32 @w6692_mode(%struct.TYPE_3__* %13, i32 %14)
  %16 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %17 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %16, i32 0, i32 6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 1
  %20 = load i32, i32* @ISDN_P_NONE, align 4
  %21 = call i32 @w6692_mode(%struct.TYPE_3__* %19, i32 %20)
  %22 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %23 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @led, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %30 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @W6692_USR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %28, %1
  %35 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %36 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, 4
  store i32 %38, i32* %36, align 8
  %39 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %40 = load i32, i32* @W_XDATA, align 4
  %41 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %42 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @WriteW6692(%struct.w6692_hw* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %34, %28
  %46 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %47 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %46, i32 0, i32 9
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i32 %48)
  %50 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %51 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %54 = call i32 @free_irq(i32 %52, %struct.w6692_hw* %53)
  %55 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %56 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CLOSE_CHANNEL, align 4
  %60 = call i32 @l1_event(i32 %58, i32 %59)
  %61 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %62 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @mISDN_unregister_device(i32* %63)
  %65 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %66 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @release_region(i32 %67, i32 256)
  %69 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %70 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %69, i32 0, i32 6
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = call i32 @mISDN_freebchannel(i32* %73)
  %75 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %76 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %75, i32 0, i32 6
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = call i32 @mISDN_freebchannel(i32* %79)
  %81 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %82 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %81, i32 0, i32 5
  %83 = call i32 @mISDN_freedchannel(%struct.TYPE_4__* %82)
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %84)
  %86 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %87 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %86, i32 0, i32 4
  %88 = call i32 @list_del(i32* %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %89)
  %91 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %92 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pci_disable_device(i32 %93)
  %95 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %96 = getelementptr inbounds %struct.w6692_hw, %struct.w6692_hw* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pci_set_drvdata(i32 %97, i32* null)
  %99 = load %struct.w6692_hw*, %struct.w6692_hw** %2, align 8
  %100 = call i32 @kfree(%struct.w6692_hw* %99)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @disable_hwirq(%struct.w6692_hw*) #1

declare dso_local i32 @w6692_mode(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @WriteW6692(%struct.w6692_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.w6692_hw*) #1

declare dso_local i32 @l1_event(i32, i32) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @mISDN_freebchannel(i32*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.TYPE_4__*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_drvdata(i32, i32*) #1

declare dso_local i32 @kfree(%struct.w6692_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
