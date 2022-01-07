; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.sh_dmae_chan = type { i64, i32, i32 }
%struct.sh_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NR_DESCS_PER_CHANNEL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@sh_dmae_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @sh_dmae_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.sh_dmae_chan*, align 8
  %4 = alloca %struct.sh_desc*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %5 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %6 = call %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan* %5)
  store %struct.sh_dmae_chan* %6, %struct.sh_dmae_chan** %3, align 8
  %7 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %8 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_bh(i32* %8)
  br label %10

10:                                               ; preds = %28, %1
  %11 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %12 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NR_DESCS_PER_CHANNEL, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %18 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %17, i32 0, i32 1
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sh_desc* @kzalloc(i32 12, i32 %20)
  store %struct.sh_desc* %21, %struct.sh_desc** %4, align 8
  %22 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %23 = icmp ne %struct.sh_desc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %26 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_bh(i32* %26)
  br label %55

28:                                               ; preds = %16
  %29 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %30 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %29, i32 0, i32 1
  %31 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %32 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %31, i32 0, i32 2
  %33 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %30, i32* %32)
  %34 = load i32, i32* @sh_dmae_tx_submit, align 4
  %35 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %36 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @DMA_CTRL_ACK, align 4
  %39 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %40 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %43 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %42, i32 0, i32 0
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %46 = load %struct.sh_desc*, %struct.sh_desc** %4, align 8
  %47 = call i32 @sh_dmae_put_desc(%struct.sh_dmae_chan* %45, %struct.sh_desc* %46)
  %48 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %49 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %52 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  br label %10

55:                                               ; preds = %24, %10
  %56 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %57 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %3, align 8
  %60 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  ret i32 %62
}

declare dso_local %struct.sh_dmae_chan* @to_sh_chan(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sh_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sh_dmae_put_desc(%struct.sh_dmae_chan*, %struct.sh_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
