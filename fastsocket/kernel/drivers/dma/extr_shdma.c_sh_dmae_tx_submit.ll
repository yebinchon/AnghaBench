; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_tx_submit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_shdma.c_sh_dmae_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.sh_desc = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sh_dmae_chan = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @sh_dmae_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_dmae_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca %struct.dma_async_tx_descriptor*, align 8
  %3 = alloca %struct.sh_desc*, align 8
  %4 = alloca %struct.sh_dmae_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %2, align 8
  %6 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %7 = call %struct.sh_desc* @tx_to_sh_desc(%struct.dma_async_tx_descriptor* %6)
  store %struct.sh_desc* %7, %struct.sh_desc** %3, align 8
  %8 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %2, align 8
  %9 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sh_dmae_chan* @to_sh_chan(i32 %10)
  store %struct.sh_dmae_chan* %11, %struct.sh_dmae_chan** %4, align 8
  %12 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %13 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %16 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.sh_desc*, %struct.sh_desc** %3, align 8
  %26 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sh_desc*, %struct.sh_desc** %3, align 8
  %35 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.sh_desc*, %struct.sh_desc** %3, align 8
  %39 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %43 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.sh_desc*, %struct.sh_desc** %3, align 8
  %46 = getelementptr inbounds %struct.sh_desc, %struct.sh_desc* %45, i32 0, i32 0
  %47 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %48 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @list_splice_init(i32* %46, i32 %50)
  %52 = load %struct.sh_dmae_chan*, %struct.sh_dmae_chan** %4, align 8
  %53 = getelementptr inbounds %struct.sh_dmae_chan, %struct.sh_dmae_chan* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock_bh(i32* %53)
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.sh_desc* @tx_to_sh_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.sh_dmae_chan* @to_sh_chan(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
