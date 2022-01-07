; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_softirq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_cciss.c_cciss_softirq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_28__** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32 }
%struct.request = type { i64, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_25__*, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }

@hba = common dso_local global %struct.TYPE_27__** null, align 8
@XFER_READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@CCISS_SG_CHAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Done with %p\0A\00", align 1
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @cciss_softirq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cciss_softirq_done(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %3, align 8
  %14 = load %struct.TYPE_27__**, %struct.TYPE_27__*** @hba, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %14, i64 %17
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %4, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 5
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %5, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @XFER_READ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  store i32 %31, i32* %9, align 4
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %32, %30
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %97, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %100

42:                                               ; preds = %35
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CCISS_SG_CHAIN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %42
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = call i32 @cciss_unmap_sg_chain_block(%struct.TYPE_27__* %52, %struct.TYPE_18__* %53)
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %57, i64 %60
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %61, align 8
  store %struct.TYPE_28__* %62, %struct.TYPE_28__** %5, align 8
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %51, %42
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @pci_unmap_page(%struct.TYPE_19__* %84, i32 %86, i32 %92, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %63
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %35

100:                                              ; preds = %35
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load %struct.request*, %struct.request** %2, align 8
  %106 = call i32 @dev_dbg(i32* %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.request* %105)
  %107 = load %struct.request*, %struct.request** %2, align 8
  %108 = getelementptr inbounds %struct.request, %struct.request* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.request*, %struct.request** %2, align 8
  %119 = getelementptr inbounds %struct.request, %struct.request* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %112, %100
  %121 = load %struct.request*, %struct.request** %2, align 8
  %122 = load %struct.request*, %struct.request** %2, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  br label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  br label %130

130:                                              ; preds = %127, %126
  %131 = phi i32 [ 0, %126 ], [ %129, %127 ]
  %132 = call i32 @blk_end_request_all(%struct.request* %121, i32 %131)
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @spin_lock_irqsave(i32* %134, i64 %135)
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %139 = call i32 @cmd_free(%struct.TYPE_27__* %137, %struct.TYPE_18__* %138)
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %141 = call i32 @cciss_check_queues(%struct.TYPE_27__* %140)
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @spin_unlock_irqrestore(i32* %143, i64 %144)
  ret void
}

declare dso_local i32 @cciss_unmap_sg_chain_block(%struct.TYPE_27__*, %struct.TYPE_18__*) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_19__*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.request*) #1

declare dso_local i32 @blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cmd_free(%struct.TYPE_27__*, %struct.TYPE_18__*) #1

declare dso_local i32 @cciss_check_queues(%struct.TYPE_27__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
