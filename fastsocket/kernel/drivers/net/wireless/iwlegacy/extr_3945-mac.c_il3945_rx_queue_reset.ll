; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_rx_queue_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945-mac.c_il3945_rx_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.il_rx_queue = type { i32, i64, i64, i64, i64, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@RX_FREE_BUFFERS = common dso_local global i32 0, align 4
@RX_QUEUE_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il3945_rx_queue_reset(%struct.il_priv* %0, %struct.il_rx_queue* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_queue* %1, %struct.il_rx_queue** %4, align 8
  %7 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %8 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %11, i32 0, i32 7
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %14, i32 0, i32 5
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %81, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RX_FREE_BUFFERS, align 4
  %20 = load i32, i32* @RX_QUEUE_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %24, i32 0, i32 6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %23
  %34 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %35 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %38 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %37, i32 0, i32 6
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %45, %49
  %51 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %52 = call i32 @pci_unmap_page(i32 %36, i32 %44, i32 %50, i32 %51)
  %53 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %54 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %55 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %54, i32 0, i32 6
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @__il_free_pages(%struct.il_priv* %53, i32* %61)
  %63 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %64 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %63, i32 0, i32 6
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %33, %23
  %71 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %72 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %71, i32 0, i32 6
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %79 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %78, i32 0, i32 5
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %17

84:                                               ; preds = %17
  %85 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %86 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %88 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %90 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %92 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.il_rx_queue*, %struct.il_rx_queue** %4, align 8
  %94 = getelementptr inbounds %struct.il_rx_queue, %struct.il_rx_queue* %93, i32 0, i32 0
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @__il_free_pages(%struct.il_priv*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
