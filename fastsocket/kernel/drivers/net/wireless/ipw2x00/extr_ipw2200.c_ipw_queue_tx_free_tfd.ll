; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_tx_free_tfd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_queue_tx_free_tfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.clx2_tx_queue = type { %struct.TYPE_8__, i32**, %struct.tfd_frame* }
%struct.TYPE_8__ = type { i64 }
%struct.tfd_frame = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@TX_HOST_COMMAND_TYPE = common dso_local global i64 0, align 8
@NUM_TFD_CHUNKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Too many chunks: %i\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*, %struct.clx2_tx_queue*)* @ipw_queue_tx_free_tfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_queue_tx_free_tfd(%struct.ipw_priv* %0, %struct.clx2_tx_queue* %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca %struct.clx2_tx_queue*, align 8
  %5 = alloca %struct.tfd_frame*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store %struct.clx2_tx_queue* %1, %struct.clx2_tx_queue** %4, align 8
  %8 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %9 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %8, i32 0, i32 2
  %10 = load %struct.tfd_frame*, %struct.tfd_frame** %9, align 8
  %11 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %12 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %10, i64 %14
  store %struct.tfd_frame* %15, %struct.tfd_frame** %5, align 8
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %6, align 8
  %19 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %20 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TX_HOST_COMMAND_TYPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %110

26:                                               ; preds = %2
  %27 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %28 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load i32, i32* @NUM_TFD_CHUNKS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %37 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %110

43:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %107, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %47 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = icmp slt i32 %45, %51
  br i1 %52, label %53, label %110

53:                                               ; preds = %44
  %54 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %55 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %56 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.tfd_frame*, %struct.tfd_frame** %5, align 8
  %66 = getelementptr inbounds %struct.tfd_frame, %struct.tfd_frame* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %76 = call i32 @pci_unmap_single(%struct.pci_dev* %54, i32 %64, i32 %74, i32 %75)
  %77 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %78 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %81 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32*, i32** %79, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %53
  %88 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %89 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %92 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32*, i32** %90, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @libipw_txb_free(i32* %96)
  %98 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %99 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %4, align 8
  %102 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32*, i32** %100, i64 %104
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %87, %53
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %44

110:                                              ; preds = %25, %35, %44
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IPW_ERROR(i8*, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @libipw_txb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
