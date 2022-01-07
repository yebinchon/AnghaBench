; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-dma.c_ide_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.ide_cmd = type { i32, i32, i32, i32 }

@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.ide_cmd*)* @ide_dma_map_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_dma_map_sg(%struct.TYPE_5__* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.ide_cmd*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  store %struct.scatterlist* %13, %struct.scatterlist** %6, align 8
  %14 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %33 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dma_map_sg(i32 %31, %struct.scatterlist* %32, i32 %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.ide_cmd*, %struct.ide_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %28
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
