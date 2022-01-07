; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_dma_lib.c_pasemi_dma_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pasemi_dmachan = type { i32, i32, i32 }

@dma_pdev = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pasemi_dma_alloc_ring(%struct.pasemi_dmachan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pasemi_dmachan*, align 8
  %5 = alloca i32, align 4
  store %struct.pasemi_dmachan* %0, %struct.pasemi_dmachan** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %7 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %12 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dma_pdev, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %20 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %19, i32 0, i32 2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @dma_alloc_coherent(i32* %14, i32 %18, i32* %20, i32 %21)
  %23 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %24 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %26 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %2
  %33 = load %struct.pasemi_dmachan*, %struct.pasemi_dmachan** %4, align 8
  %34 = getelementptr inbounds %struct.pasemi_dmachan, %struct.pasemi_dmachan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memset(i32 %35, i32 0, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
