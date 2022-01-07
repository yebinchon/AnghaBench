; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_tx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i32, i32, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mpsc_tx_desc = type { i32, i32 }

@MPSC_TXRE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SDMA_DESC_CMDSTAT_O = common dso_local global i32 0, align 4
@MPSC_TXR_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpsc_port_info*)* @mpsc_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_tx_intr(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca %struct.mpsc_tx_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %7 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %11 = call i32 @mpsc_sdma_tx_active(%struct.mpsc_port_info* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %99, label %13

13:                                               ; preds = %1
  %14 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %15 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %18 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  %24 = inttoptr i64 %23 to %struct.mpsc_tx_desc*
  store %struct.mpsc_tx_desc* %24, %struct.mpsc_tx_desc** %3, align 8
  %25 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %26 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %30 = bitcast %struct.mpsc_tx_desc* %29 to i8*
  %31 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_cache_sync(i32 %28, i8* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %73, %13
  %35 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %36 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load i32, i32* @SDMA_DESC_CMDSTAT_O, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %94

43:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  %44 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %45 = getelementptr inbounds %struct.mpsc_tx_desc, %struct.mpsc_tx_desc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @be16_to_cpu(i32 %46)
  %48 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %49 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %47
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %57 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* @MPSC_TXR_ENTRIES, align 4
  %61 = sub nsw i32 %60, 1
  %62 = and i32 %59, %61
  %63 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %64 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %66 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %69 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %43
  br label %94

73:                                               ; preds = %43
  %74 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %75 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %78 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %76, %82
  %84 = inttoptr i64 %83 to %struct.mpsc_tx_desc*
  store %struct.mpsc_tx_desc* %84, %struct.mpsc_tx_desc** %3, align 8
  %85 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %86 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mpsc_tx_desc*, %struct.mpsc_tx_desc** %3, align 8
  %90 = bitcast %struct.mpsc_tx_desc* %89 to i8*
  %91 = load i32, i32* @MPSC_TXRE_SIZE, align 4
  %92 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %93 = call i32 @dma_cache_sync(i32 %88, i8* %90, i32 %91, i32 %92)
  br label %34

94:                                               ; preds = %72, %34
  %95 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %96 = call i32 @mpsc_copy_tx_data(%struct.mpsc_port_info* %95)
  %97 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %98 = call i32 @mpsc_sdma_start_tx(%struct.mpsc_port_info* %97)
  br label %99

99:                                               ; preds = %94, %1
  %100 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %101 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %100, i32 0, i32 2
  %102 = load i64, i64* %5, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mpsc_sdma_tx_active(%struct.mpsc_port_info*) #1

declare dso_local i32 @dma_cache_sync(i32, i8*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @mpsc_copy_tx_data(%struct.mpsc_port_info*) #1

declare dso_local i32 @mpsc_sdma_start_tx(%struct.mpsc_port_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
