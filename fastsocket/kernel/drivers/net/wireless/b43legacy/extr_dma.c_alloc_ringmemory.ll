; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_alloc_ringmemory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_dma.c_alloc_ringmemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@B43legacy_DMA_RINGMEMSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*)* @alloc_ringmemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_ringmemory(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_dmaring*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %3, align 8
  %4 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %5 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @B43legacy_DMA_RINGMEMSIZE, align 4
  %12 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %12, i32 0, i32 1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @__GFP_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @dma_alloc_coherent(i32 %10, i32 %11, i32* %13, i32 %16)
  %18 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %19 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %3, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
