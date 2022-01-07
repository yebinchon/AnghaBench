; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c___idmac_terminate_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ipu/extr_ipu_idmac.c___idmac_terminate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.idmac_channel = type { i64, i32, i32, i32**, i32, %struct.idmac_tx_desc*, i32 }
%struct.idmac_tx_desc = type { i32, i32 }
%struct.idmac = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IPU_CHANNEL_ENABLED = common dso_local global i64 0, align 8
@IPU_CHANNEL_INITIALIZED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @__idmac_terminate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__idmac_terminate_all(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.idmac_channel*, align 8
  %4 = alloca %struct.idmac*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.idmac_tx_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %9 = call %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan* %8)
  store %struct.idmac_channel* %9, %struct.idmac_channel** %3, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.idmac* @to_idmac(i32 %12)
  store %struct.idmac* %13, %struct.idmac** %4, align 8
  %14 = load %struct.idmac*, %struct.idmac** %4, align 8
  %15 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %16 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPU_CHANNEL_ENABLED, align 8
  %20 = icmp sge i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ipu_disable_channel(%struct.idmac* %14, %struct.idmac_channel* %15, i32 %21)
  %23 = load %struct.idmac*, %struct.idmac** %4, align 8
  %24 = call %struct.TYPE_2__* @to_ipu(%struct.idmac* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @tasklet_disable(i32* %25)
  %27 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %28 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %27, i32 0, i32 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %32 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %31, i32 0, i32 6
  %33 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %34 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %33, i32 0, i32 4
  %35 = call i32 @list_splice_init(i32* %32, i32* %34)
  %36 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %37 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %36, i32 0, i32 5
  %38 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %37, align 8
  %39 = icmp ne %struct.idmac_tx_desc* %38, null
  br i1 %39, label %40, label %72

40:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %68, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %44 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %41
  %48 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %49 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %48, i32 0, i32 5
  %50 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %50, i64 %52
  store %struct.idmac_tx_desc* %53, %struct.idmac_tx_desc** %7, align 8
  %54 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %7, align 8
  %55 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %54, i32 0, i32 1
  %56 = call i64 @list_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %7, align 8
  %60 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %59, i32 0, i32 1
  %61 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %62 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %61, i32 0, i32 4
  %63 = call i32 @list_add(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %58, %47
  %65 = load %struct.idmac_tx_desc*, %struct.idmac_tx_desc** %7, align 8
  %66 = getelementptr inbounds %struct.idmac_tx_desc, %struct.idmac_tx_desc* %65, i32 0, i32 0
  %67 = call i32 @async_tx_clear_ack(i32* %66)
  br label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %41

71:                                               ; preds = %41
  br label %72

72:                                               ; preds = %71, %1
  %73 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %74 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %73, i32 0, i32 3
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %78 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %77, i32 0, i32 3
  %79 = load i32**, i32*** %78, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %82 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %81, i32 0, i32 2
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.idmac*, %struct.idmac** %4, align 8
  %86 = call %struct.TYPE_2__* @to_ipu(%struct.idmac* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = call i32 @tasklet_enable(i32* %87)
  %89 = load i64, i64* @IPU_CHANNEL_INITIALIZED, align 8
  %90 = load %struct.idmac_channel*, %struct.idmac_channel** %3, align 8
  %91 = getelementptr inbounds %struct.idmac_channel, %struct.idmac_channel* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  ret void
}

declare dso_local %struct.idmac_channel* @to_idmac_chan(%struct.dma_chan*) #1

declare dso_local %struct.idmac* @to_idmac(i32) #1

declare dso_local i32 @ipu_disable_channel(%struct.idmac*, %struct.idmac_channel*, i32) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local %struct.TYPE_2__* @to_ipu(%struct.idmac*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @async_tx_clear_ack(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
